//
//  main.swift
//  progDil
//
//  Created by SEYMEN on 7.12.2014.
//  Copyright (c) 2014 SEYMEN. All rights reserved.
//

import Foundation


class RandomName
{
    var language: String
    var again: Int
    var liste: [String] = [""]
    
    init( language: String = "tr", again: Int = 10 )
    {
        self.language = language
        self.again = again
    }
    
    func CreateName() -> String
    {
        let isimler = [
            "armut",
            "elma",
            "kedi",
            "koyun",
            "kus",
            "lamba",
            "uzum",
            "sahil",
            "sarap",
            "yol"
        ]
        let names = [
            "baby",
            "book",
            "car",
            "child",
            "computer",
            "house",
            "main",
            "man",
            "pen",
            "sea"
        ]
        let sifatlar = [
            "akilli",
            "buyuk",
            "cimri",
            "eksi",
            "iyi",
            "kel",
            "kucuk",
            "pahali",
            "uzun",
            "yavas"
        ]
        let adjectives = [
            "bad",
            "beautiful",
            "blue",
            "cheap",
            "crazy",
            "good",
            "hard",
            "long",
            "nice",
            "small"
        ]
        let dictionary = [
            "tr":
                [
                    "isimler": isimler,
                    "sifatlar": sifatlar
            ],
            "ing":
                [
                    "isimler": names,
                    "sifatlar": adjectives
            ]
        ]
        let lowerDictionary: [String: [String]]! = dictionary[self.language]
        let isim: [String]! = lowerDictionary["isimler"]
        let sifat: [String]! = lowerDictionary["sifatlar"]
        return sifat[Random(sifat.count)]+" "+isim[Random(isim.count)]
    }
    
    func Control( kelime: String ) -> Bool
    {
        for i in self.liste
        {
            if i == kelime
            {
                return false
            }
        }
        return true
    }
    
    func Show()
    {
        var kelime: String
        while self.again > 0
        {
            kelime = CreateName()
            if Control(kelime)
            {
                self.liste.append(kelime)
                println(kelime)
                self.again--
            }
        }
    }
    
    func Random( x:Int ) -> Int
    {
        return Int( arc4random_uniform(UInt32(x)) )
    }
}
var nesne = RandomName()
nesne.Show()