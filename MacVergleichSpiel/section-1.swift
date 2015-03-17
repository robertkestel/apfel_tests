// Playground - noun: a place where people can play

import UIKit

protocol MeinProtokoll {
    class func random() -> Self
    func print() -> String
    func besser(other: Self) -> Bool
}

extension Int: MeinProtokoll {
    static func random() -> Int {
        return Int(arc4random()) % 10000
    }
    func print() -> String {
        return "\(self)"
    }
    func besser(other: Int) -> Bool {
        return self > other
    }
}

struct Mac: MeinProtokoll {
    var modell: String
    var ram: Int
    
    static func random() -> Mac {
        var modell = "Mac"
        var zufall = Int.random()
        if zufall < 1000 {
            modell = "i" + modell
        }
        if zufall >= 1000 && zufall < 2000 {
            modell = "Iphone"
        }
        if zufall >= 2000 && zufall < 8000 {
            modell = modell + "book"
        }
        
        if zufall >= 5000 && zufall < 10000 {
            modell = modell + " Pro"
        }
        if zufall >= 3000 && zufall < 5000 {
            modell = modell + "Air"
        }
        var  ram = Int.random()
        return Mac(modell: modell, ram: ram)
    }
    
    func print() -> String {
        return "Ich bin ein \(modell) und habe \(ram) MB Ram."
    }
    
    func besser(other: Mac) -> Bool {
        return self.ram > other.ram
    }
}

func vergleiche<T: MeinProtokoll>(eins: T) -> Bool {
    let zwei = T.random()
    println("===================\n Ich vergleiche:\n1. \(eins.print())\n2. \(zwei.print())")
    return eins.besser(zwei)
}


var meinMac = Mac(modell: "MacBook Pro", ram: 8192)

vergleiche(meinMac)







