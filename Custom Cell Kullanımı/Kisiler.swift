//
//  Kisiler.swift
//  Custom Cell Kullanımı
//
//  Created by Ömer Faruk Kılıçaslan on 16.04.2022.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init(){
        
    }
    
    init(kisiId:Int,kisiAd:String,kisiTel:String){
        self.kisiAd = kisiAd
        self.kisiId = kisiId
        self.kisiTel = kisiTel
    }
}
