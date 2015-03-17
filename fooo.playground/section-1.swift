// Playground - noun: a place where people can play

import UIKit



class Information {
    
    var inhalt: String
    var nutzen: Double
    
    init (inhalt: String, nutzen: Double) {
        self.inhalt = inhalt
        self.nutzen = nutzen
    }
    
}



class Norman {

    var informationen: [Information]
    var summe: Double
    init (information: [Information]) {
        self.informationen = information
        summe = 0.0
    }
    
    func addInfo(information: Information) {
        informationen.append(information)
    }
    
    func printNorman(){
        for information in informationen {
            var wissen = 0.0
            wissen = wissen + information.nutzen
            println(information.inhalt + "\n===========\n\(wissen)")
        }
    }
    
    func wissenKumuliert() -> Double {
        var wissen = 0.0
        for information in informationen {
            wissen = wissen + information.nutzen
        }
        return wissen
    }
}




let info = Information(inhalt: "Wiki", nutzen: 0.1)
let info2 = Information(inhalt: "LateX", nutzen: 0.3)
let pauli = Information(inhalt: "nörv", nutzen: 0.0)


let infosammlung = [info,info2]
let infosammlung2 = [pauli]

let norm = Norman(information: infosammlung)
let paul = Norman(information: infosammlung2)


//norm.printNorman()

let info3 = Information(inhalt: "nutzlos", nutzen: 0.0)

let info4 = Information(inhalt: "nerviger Inhalt", nutzen: 0.5)
let info5 = Information(inhalt: "Andre warum isst du im stehen?", nutzen: 0.3)

norm.addInfo(info3)
norm.addInfo(info4)
norm.addInfo(info5)

println("Norman:")

norm.printNorman()




println("\nWissen Norman kumuliert: \(norm.wissenKumuliert()) \n\n")


println("Paul:")

let pauli2 = Information(inhalt: "Austritt.. ähh.. Chemnitz.. DRÖLF", nutzen: 0.001)
paul.addInfo(pauli2)

paul.printNorman()















