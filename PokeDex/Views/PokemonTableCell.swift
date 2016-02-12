//
//  PokemonTableCell.swift
//  PokeDex
//
//  Created by Eric Chou on 1/20/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import UIKit
import Alamofire

class PokemonTableCell: UITableViewCell {
    private var _model : Pokemon? = nil
    
    var model: Pokemon? {
        get {
            return self._model
        }
        set {
            self._model = newValue
            
            let uri = "".stringByAppendingFormat(PokeDexSettingsAdapter.GetPokemonImageEndPoint(), self.model!.id)
            
            Alamofire.request(.GET, uri).response { (request, response, data, error) in
                self.mainImageView.image = UIImage(data: data!, scale:1)
            }
            
            self.nameLabel!.text = self._model!.name
            self.attackLabel!.text = String(self._model!.attack)
            self.defenseLabel!.text = String(self._model!.defense)
        }
    }
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
