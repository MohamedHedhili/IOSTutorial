//
//  ViewController.swift
//  NotesApp
//
//  Created by TekUP2 on 22/01/2017.
//  Copyright © 2017 HedhiliMohamed. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var txtDesxription: UITextView!
    @IBOutlet weak var txtTittle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func addNote(_ sender: AnyObject) {
 let newNote = Notes(context: context)
        
        newNote.tittle = txtTittle.text
        newNote.details = txtDesxription.text
        
        newNote.date_save = NSDate ()
        do {
            ad.saveContext()
            txtTittle.text = ""
            txtDesxription.text = ""
        print("saved")
        }
        catch
        {
        print("error")}
    }
}

