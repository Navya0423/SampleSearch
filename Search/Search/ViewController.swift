//
//  ViewController.swift
//  Search
//
//  Created by Navya on 11/6/17.
//  Copyright © 2017 Navya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource{
  
    
    @IBOutlet weak var chocTable: UITableView!
    var choclates = [Choclates]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        choclates = [
            Choclates(ChocName:"Chocolate", chocComapny:"Chocolate Bar"),
            Choclates(ChocName:"Chocolate", chocComapny:"Chocolate Chip"),
            Choclates(ChocName:"Chocolate", chocComapny:"Dark Chocolate"),
            Choclates(ChocName:"Hard", chocComapny:"Lollipop"),
            Choclates(ChocName:"Hard", chocComapny:"Choclates Cane"),
            Choclates(ChocName:"Hard", chocComapny:"Jaw Breaker"),
            Choclates(ChocName:"Other", chocComapny:"Caramel"),
            Choclates(ChocName:"Other", chocComapny:"Sour Chew"),
            Choclates(ChocName:"Other", chocComapny:"Gummi Bear"),
            Choclates(ChocName:"Other", chocComapny:"Choclates Floss"),
            Choclates(ChocName:"Chocolate", chocComapny:"Chocolate Coin"),
            Choclates(ChocName:"Chocolate", chocComapny:"Chocolate Egg"),
            Choclates(ChocName:"Other", chocComapny:"Jelly Beans"),
            Choclates(ChocName:"Other", chocComapny:"Liquorice"),
            Choclates(ChocName:"Hard", chocComapny:"Toffee Apple")
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choclates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let Choclates = choclates[indexPath.row]
        cell.textLabel!.text = Choclates.chocComapny
        cell.detailTextLabel!.text = Choclates.ChocName
        return cell
    }

}

