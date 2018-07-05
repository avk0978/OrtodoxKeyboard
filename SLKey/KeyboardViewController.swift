//
//  KeyboardViewController.swift
//  SLKey
//
//  Created by Andrey Kolpakov on 23.05.2018.
//  Copyright © 2018 Andrey Kolpakov. All rights reserved.
//

import UIKit


class KeyboardViewController: UIInputViewController, SlavonicKeyboard {
        
    
    let linesSmallButton = [topLine, firstLine, secondLine, thirdLine, bottomLine]
    let rowsSmallLetters = [smallLetterRowTop, smallLetterRow1, smallLetterRow2, smallLetterRow3, smallLetterRowBottom]

    let linesBigButton = [bigTopLine, bigFirstLine, bigSecondLine, bigThirdLine, bigBottomLine]
    let rowsBigLetters = [bigLetterRowTop, bigLetterRow1, bigLetterRow2, bigLetterRow3, bigLetterRowBottom]

    let linesSymbolButton = [symbolTopLine, symbolFirstLine, symbolSecondLine, symbolThirdLine, symbolBottomLine]
    let rowsSymbolLetters = [symbolLetterRowTop, symbolLetterRow1, symbolLetterRow2, symbolLetterRow3, symbolLetterRowBottom]

    
    var shift = false
    var symbol = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPanel(layout: smallLetterLayout)
    }
    
    
    func removeAllPanelAndAddThe(panel: UIView) {
        if smallLetterLayout.isDescendant(of: self.view) { smallLetterLayout.removeFromSuperview() }
        if bigLetterLayout.isDescendant(of: self.view) { bigLetterLayout.removeFromSuperview() }
        if symbolLayout.isDescendant(of: self.view) { symbolLayout.removeFromSuperview() }
        createPanel(layout: panel)
    }
    
    
    func createPanel(layout: UIView) {
        switch layout {
        case smallLetterLayout:
            createsLayoutKeyboard(inThe: layout, from: linesSmallButton, and: rowsSmallLetters)
        case bigLetterLayout:
            createsLayoutKeyboard(inThe: layout, from: linesBigButton, and: rowsBigLetters)
        case symbolLayout:
            createsLayoutKeyboard(inThe: layout, from: linesSymbolButton, and: rowsSymbolLetters)
        default:
            break
        }
        
        self.view.addSubview(layout)
        addConstraintOnthe(layout, inThe: self.view)
    }
    
    
    func createsLayoutKeyboard(inThe view: UIView, from linesKeyboard: [UIView], and linesRowKey: [[Key]]) {
        
        if !linesKeyboard[0].isDescendant(of: view){
        for item in 0...linesKeyboard.count - 1 {
            createsLineOf(buttons: linesRowKey[item], inThe: linesKeyboard[item])
            view.addSubview(linesKeyboard[item])
        }
        addConstraintsOnThe(lines: linesKeyboard, in: view, heightLine: 40, space: 2)            
        }
    }
    
    func createsLineOf(buttons:[Key], inThe view: UIView) {
        var keybuttonsInTheRow: [Key] = []
        for item in 0...buttons.count - 1 {
            keybuttonsInTheRow.append(Key(type: .custom, buttons[item].letterName, image: buttons[item].image))
            keybuttonsInTheRow[item].addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
            view.addSubview(keybuttonsInTheRow[item])
        }
        addConstraintsOnTheKey(buttons: keybuttonsInTheRow, inThe: view, indentLeft: 5, indentRight: 5, space: 5)
    }
    
    @objc func didTapButton(key: Key) {
        let proxy = textDocumentProxy
        switch key.letterValue {
        case "...":
            symbol = !symbol
            if symbol { removeAllPanelAndAddThe(panel: symbolLayout) }
            else { removeAllPanelAndAddThe(panel: smallLetterLayout) }
        case "BackSpace":
            proxy.deleteBackward()
        case "Return":
            proxy.insertText("\n")
        case "Space":
            proxy.insertText(" ")
        case "NextKB":
            self.advanceToNextInputMode()
        case "Shift":
            shift = !shift
            if shift { removeAllPanelAndAddThe(panel: bigLetterLayout) }
            else { removeAllPanelAndAddThe(panel: smallLetterLayout) }
        default :
            proxy.insertText(key.letterValue)
            if shift {
                shift = false
                removeAllPanelAndAddThe(panel: smallLetterLayout)
            }
        }
    }
    

}









