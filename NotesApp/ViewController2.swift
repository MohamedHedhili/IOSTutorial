//
//  ViewController2.swift
//  NotesApp
//
//  Created by TekUP2 on 22/01/2017.
//  Copyright © 2017 HedhiliMohamed. All rights reserved.
//

import UIKit
import CoreData

class ViewController2: UIViewController ,UITableViewDelegate ,UITableViewDataSource {
 var listNotes = [Notes]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNotes()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
     return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNotes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TabTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TabTableViewCell
        cell.setCell(note: listNotes[indexPath.row])
        return cell
    }
    func loadNotes ()
    {let fetchReques : NSFetchRequest<Notes> = Notes.fetchRequest()
        do
        {listNotes = try context.fetch(fetchReques)
            tableView.reloadData()
        }
        catch {print ("Error")}
    }
}
