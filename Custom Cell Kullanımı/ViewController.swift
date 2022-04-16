//
//  ViewController.swift
//  Custom Cell Kullanımı
//
//  Created by Ömer Faruk Kılıçaslan on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kisilerTableView: UITableView!
    
   var kisilerListe = [Kisiler]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Ahmet", kisiTel: "3943043")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Mehmet", kisiTel: "34323421")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Zeynep", kisiTel: "231313")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Ece", kisiTel: "534224")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Kemal", kisiTel: "3542452")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
    }


}

extension ViewController:UITableViewDelegate, UITableViewDataSource, TableViewHucreProtocol{
    func hucreUzerindekiButtonTiklandi(indexPath: IndexPath) {
        print("Button tıklandı \(kisilerListe[indexPath.row].kisiAd!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd!) - \(gelenKisi.kisiTel!)"
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gelenKisi = kisilerListe[indexPath.row]
        
        print("ID : \(gelenKisi.kisiId!), Ad : \(gelenKisi.kisiAd!) , Tel : \(gelenKisi.kisiTel!)")
    }
}
