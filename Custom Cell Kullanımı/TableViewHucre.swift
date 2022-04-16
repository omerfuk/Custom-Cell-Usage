//
//  TableViewHucre.swift
//  Custom Cell Kullanımı
//
//  Created by Ömer Faruk Kılıçaslan on 16.04.2022.
//

import UIKit

protocol TableViewHucreProtocol{
    func hucreUzerindekiButtonTiklandi(indexPath:IndexPath)
}

class TableViewHucre: UITableViewCell {
    var hucreProtocol:TableViewHucreProtocol?
    var indexPath:IndexPath?
    
    
    @IBOutlet weak var kisiAdLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonTikla(_ sender: Any) {
        hucreProtocol?.hucreUzerindekiButtonTiklandi(indexPath: indexPath!)
        
    }
}
