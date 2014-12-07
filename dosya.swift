//
//  main.swift
//  nnn
//
//  Created by SEYMEN on 22.11.2014.
//  Copyright (c) 2014 SEYMEN. All rights reserved.
//

import Foundation
class File
{
    // Path tanımlanıyor
    func exists(path: String) -> Bool
    {
        return NSFileManager().fileExistsAtPath(path)
    }
    // Okuma metodu
    func read (path: String , encoding: NSStringEncoding = NSUTF8StringEncoding) -> String?
    {
        if exists(path)
        {
            return String(contentsOfFile: path, encoding: encoding, error: nil)
        }
        return nil
    }
    
    // Yazma Metodu
    
    func write (path: String, content: String, encoding:   NSStringEncoding = NSUTF8StringEncoding) -> Bool
    {
        return content.writeToFile(path, atomically: false, encoding: encoding, error: nil)
    }
}
// Örnek kullanım

var nesne = File()

var doktor = "Merhaba ben doktor\n"

var hasta = "Merhaba bende hasta\n"


var str: String? = nesne.read("/Users/seymen/Desktop/depo.txt")

println(str)
