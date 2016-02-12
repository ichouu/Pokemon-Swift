//
//  ViewController.swift
//  PokeDex
//
//  Created by Eric Chou on 1/18/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import UIKit


class ViewController: UIViewController, DataBrokerRequestor , UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var pokemonTableView: UITableView!
    
    var pokemonArray: [AnyObject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let broker = PokemonDataBroker(forRequestor:self)
        broker.getPokemonwithID("2")
        broker.getPokemonwithID("5")
        broker.getPokemonwithID("10")
        broker.getPokemonwithID("12")
        broker.getPokemonwithID("16")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: - UITableViewDelegate/DataSouce Implementation
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: PokemonTableCell = tableView.dequeueReusableCellWithIdentifier("pokemonTableCellID")! as! PokemonTableCell
        cell.model = pokemonArray[indexPath.row] as? Pokemon
        return cell
    }
   
//MARK: - DataBroker implementation
    func brokerRequestComplete(resultArray: Array<AnyObject>) {
        pokemonArray.appendContentsOf(resultArray)
        self.pokemonTableView.reloadData()
    }
    func brokerRequestFailed(error: NSError) {
        print(error)
    }
}

