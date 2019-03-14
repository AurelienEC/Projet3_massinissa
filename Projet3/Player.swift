//
//  Player.swift
//  Projet 03
//
//  Created by Massinissa_theking on 12/03/2019.
//  Copyright © 2019 Massinissa_theking. All rights reserved.
//
import Foundation

class Player {
    
    var name : String = ""
    var team :[ Character ] = []
    
    
    func createTeam (){
        // afficher les personnages existant
        print("Bonjour \(name) vous allez constituer votre équipe:")
        
        
        // repeter l'operation jusqu'a ce que on est 3 personnages dans l'equipe
        while team.count < 3 {
            let charactersNeeded = 3 - team.count
            print("""
            Veuillez choisir parmis les personnages suivants:
            1. Le combattant : Mec normal - 100pts de vie 10 de frappe
            2. Le mage : un mec qui soigne
            3. Le nain : un mec pas grand qui tape dur
            4. Le colosse : Un mec grand pas doué pour le combat
            Il vous reste à choisir \(charactersNeeded) !
            """)
            // ecouter l'entree clavier pour le choix d'un personnage
            let entry = readLine()
            if let playerChoice = entry {
                var character : Character?
                switch playerChoice {
                case "1":
                    character = Fighter(name: "", life: 100, dammage: 10, weapon: "Epee")
                case "2":
                    character = Wizard(name: "", life: 100, dammage: -10, weapon: "Magic Wand")
                case "3":
                    character = Dwarf(name: "", life: 90, dammage: 30, weapon: "Axe")
                case "4":
                    character = Colossus(name: "", life: 100, dammage: -10, weapon: "Hammer")
                default:
                    print("pas compris ! Recomencez")
                }
                if let char = character {
                    print("Comment voulez vous appeler votre personnage ?")
                    if let name = readLine(){
                        char.name = name
                        team.append(char)
                        print("\(char.name) a été ajouté à votre équipe !")
                    }else{
                        print("Pas de nom....pas de personnage")
                    }
                }
            }
           
            
        }
        
        
    }
    
}
