//
//  Keys.swift
//  SLEdit
//
//  Created by Andrey Kolpakov on 23.05.2018.
//  Copyright © 2018 Andrey Kolpakov. All rights reserved.
//

import Foundation
import UIKit

let smallLetterLayout: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), bigLetterLayout: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), symbolLayout: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}()
// ------------------------------------------------------------------------
let topLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), firstLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), secondLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), thirdLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), bottomLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}()

let bigTopLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), bigFirstLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), bigSecondLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), bigThirdLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), bigBottomLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}()

let symbolTopLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), symbolFirstLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), symbolSecondLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), symbolThirdLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}(), symbolBottomLine: UIView = {
    let value = UIView()
    value.translatesAutoresizingMaskIntoConstraints = false
    return value
}()
//-----------------------------------------------------------------

let nextKBImg: UIImage = { return UIImage(named: "NextKB")! }()
let backSpaceImg: UIImage = { return UIImage(named: "BS_w31xh22")! }()
let returnImg: UIImage = { return UIImage(named: "Enter")! }()
let shiftImg: UIImage = { return UIImage(named: "Shape")! }()



let smallLetterRowTop = [Key("а"), Key("б"), Key("в"), Key("г"), Key("д"), Key("е"), Key("ж"), Key("з"), Key("и"), Key("й"), Key("BackSpace", image: backSpaceImg)]
let smallLetterRow1 = [Key("к"), Key("л"), Key("м"), Key("н"), Key("о"), Key("п"), Key("р"), Key("с"), Key("т"), Key("у"), Key("Return", image: returnImg)]
let smallLetterRow2 = [Key("ф"), Key("х"), Key("ц"), Key("ч"), Key("ш"), Key("щ"), Key("ъ"), Key("ы"), Key("ь"), Key("э"), Key("Shift", image: shiftImg)]
let smallLetterRow3 = [Key("ю"), Key("я"), Key("f"), Key("i"), Key("m"), Key("o"),Key("p"), Key("q"), Key("u"), Key("v"), Key("NextKB", image: nextKBImg)]
let smallLetterRowBottom = [Key("w"), Key("x"), Key("z"), Key("..."), Key("  "), Key("t"), Key("z"), Key("s"), Key(" 7")]


let bigLetterRowTop = [Key("А"), Key("Б"), Key("В"), Key("Г"), Key("Д"), Key("Е"), Key("Ж"), Key("З"), Key("И"), Key("Й"), Key("BackSpace", image: backSpaceImg)]
let bigLetterRow1 = [Key("К"), Key("Л"), Key("М"), Key("Н"), Key("О"), Key("П"), Key("Р"), Key("С"), Key("Т"), Key("У"), Key("Return", image: returnImg)]
let bigLetterRow2 = [Key("Ф"), Key("Х"), Key("Ц"), Key("Ч"), Key("Ш"), Key("Щ"), Key("Ъ"), Key("Ы"), Key("Ь"), Key("Э"), Key("Shift", image: shiftImg)]
let bigLetterRow3 = [Key("Ю"), Key("Я"), Key("F"), Key("I"), Key("M"), Key("O"),Key("P"), Key("Q"), Key("U"), Key("V"), Key("NextKB", image: nextKBImg)]
let bigLetterRowBottom = [Key("W"), Key("X"), Key("Z"), Key("..."), Key("  "), Key("T"), Key("Z"), Key("S"), Key(" 7")]

let symbolLetterRowTop = [Key("!"), Key(" #"), Key(" $"), Key(" %"), Key(" &"), Key("("), Key(")"), Key("*"), Key(" +"), Key(","), Key("BackSpace", image: backSpaceImg)]
let symbolLetterRow1 = [Key("_"), Key("."), Key("/"), Key("0"), Key(" 1"), Key(" 2"), Key(" 3"), Key(" 4"), Key(" 5"), Key(" 6"), Key("Return", image: returnImg)]
let symbolLetterRow2 = [Key(" 7"), Key(" 8"), Key("9"), Key(":"), Key(";"), Key(" <"), Key(" ="), Key(" >"), Key(" ?"), Key(" @"), Key("Shift", image: shiftImg)]
let symbolLetterRow3 = [Key("A"), Key("B"), Key(" C"), Key(" D"), Key(" E"), Key("G"),Key("H"), Key("J"), Key("K"), Key("L"), Key("NextKB", image: nextKBImg)]
let symbolLetterRowBottom = [Key("M"), Key("N"), Key("R"), Key("..."), Key("  "), Key(" b"), Key(" c"), Key(" d"), Key(" g")]



















