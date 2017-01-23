//
//  TabTableViewCell.swift
//  NotesApp
//
//  Created by TekUP2 on 22/01/2017.
//  Copyright © 2017 HedhiliMohamed. All rights reserved.
//

import UIKit

class TabTableViewCell: UITableViewCell {

    @IBOutlet weak var txtTittle: UILabel!
    @IBOutlet weak var txtDetails: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCell (note: Notes)
    {
    txtTittle.text = note.tittle
        txtDetails.text = note.details
    }

}
