//
//  KeyModel.swift
//  SLEdit
//
//  Created by Andrey Kolpakov on 23.05.2018.
//  Copyright © 2018 Andrey Kolpakov. All rights reserved.
//

import Foundation
import UIKit

class Key: UIButton {
    var letterName: String
    var image: UIImage?
    
    var service: Bool {                                                                 // Служебная кнопка: ДА/НЕТ - ?
        if image != nil { return true }                                                 //Рисунок есть только у служебных кнопок
        else { return false }
    }
    
    var superscript: Bool {                                                             //Если название кнопки начинается с пробела то это "надстрочник"
        if letterName.first == " " { return true}
        else { return false }
    }
    
    var letterValue: String {                                                           // Значение кнопки которое печатается
        var value = letterName
        if superscript { value.removeFirst() }
        return value
    }
    
    func initKey() {
        
        layer.cornerRadius = 5
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 1.0
        translatesAutoresizingMaskIntoConstraints = false
        
        if service && letterValue != " " {
            backgroundColor = UIColor(white: 0.8, alpha: 1)
            setImage(image!, for: [])
        } else {
            backgroundColor = UIColor(white: 1, alpha: 1)
            setTitle(letterName, for: [])
            setTitleColor(.black, for: [])
            titleLabel?.font = UIFont(name: "Hirmos Ucs", size: 18)
        }
        if superscript {titleLabel?.font.withSize(45)}
    }
    
    init(_ letterName: String, image: UIImage?) {
        
        self.letterName = letterName
        self.image = image
        super.init(frame: .zero)
        initKey()
    }
    
    convenience init(_ letterName: String){
        
        self.init(letterName, image: nil)
    }
    
    convenience init(type: UIButtonType, _ letterName: String, image: UIImage?){
        
        self.init(letterName, image: image)
    }

//    convenience init(_ letter: String, _ capitalLetter: String?, image: UIImage?){
//
//        self.init(letter, capitalLetter, capitalize: false, image: image)
//    }

    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
}

