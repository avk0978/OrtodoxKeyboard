//
//  KeyControler.swift
//  SLEdit
//
//  Created by Andrey Kolpakov on 23.05.2018.
//  Copyright © 2018 Andrey Kolpakov. All rights reserved.
//

import Foundation
import UIKit

protocol  SlavonicKeyboard {
    func addConstraintOnthe(_ layout: UIView, inThe supperView: UIView) -> Void
    func addConstraintsOnThe(lines: [UIView], in view: UIView, heightLine: CGFloat, space: CGFloat) -> Void
    func addConstraintsOnTheKey(buttons: [Key], inThe view: UIView, indentLeft: CGFloat, indentRight: CGFloat, space: CGFloat) -> Void
}

extension SlavonicKeyboard {
    
    func addConstraintOnthe(_ layout: UIView, inThe supperView: UIView) -> Void {
        layout.topAnchor.constraint(equalTo: supperView.topAnchor).isActive = true
        layout.bottomAnchor.constraint(equalTo: supperView.bottomAnchor).isActive = true
        layout.leftAnchor.constraint(equalTo: supperView.leftAnchor).isActive = true
        layout.rightAnchor.constraint(equalTo: supperView.rightAnchor).isActive = true
    }
    
    func addConstraintsOnThe(lines: [UIView], in view: UIView, heightLine: CGFloat, space: CGFloat) {
        for (index, line) in lines.enumerated(){
            line.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            line.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            line.heightAnchor.constraint(equalToConstant: heightLine)
            switch index {
            case 0:
                line.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            case lines.count - 1:
                line.topAnchor.constraint(equalTo: lines[index-1].bottomAnchor, constant: space).isActive = true
                line.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            default:
                lines[index].topAnchor.constraint(equalTo: lines[index-1].bottomAnchor, constant: space).isActive = true
            }
            
        }
    }
    
    
    func addConstraintsOnTheKey(buttons: [Key], inThe view: UIView, indentLeft: CGFloat, indentRight: CGFloat, space: CGFloat) -> Void {
        let idents = indentLeft + indentRight
        
        for (index, button) in buttons.enumerated() {
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5).isActive = true
            switch button.letterValue {
            case " ":
                button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 4/12, constant: -idents).isActive = true
            case "BackSpace", "Return", "NextKB", "Shift":
                button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/12, constant: -idents).isActive = true
            default:
                    button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/12, constant: -space).isActive = true
            }
            switch index {
            case 0:
                let nextButton = buttons[1]
                button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: indentLeft).isActive = true
                button.rightAnchor.constraint(equalTo: nextButton.leftAnchor, constant: -space).isActive = true
            case buttons.count - 1:
                button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -indentRight).isActive = true
            default:
                let nextButton = buttons[index + 1]
                button.rightAnchor.constraint(equalTo: nextButton.leftAnchor, constant: -space).isActive = true
            }
        }
    }
    
}









