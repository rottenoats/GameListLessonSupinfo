//
//  ViewController.swift
//  ExampleTableViewController
//
//  Created by Kevin Faulhaber on 12/11/2018.
//  Copyright © 2018 Julia. All rights reserved.
//

import UIKit

class GameTableViewController: UITableViewController {

    var categories: [Category]{
        
        let fantasyGames = [
            Game(title: "Diable Immortal", year: 2018),
            Game(title: "WoW", year: 2004),
            Game(title: "WIII", year: 1997),
            Game(title: "DiableIII", year: 2014)
        ]
        
        let reallifeGames = [
            Game(title: "Diable Immortal", year: 2018),
            Game(title: "WoW", year: 2004),
            Game(title: "WIII", year: 1997),
            Game(title: "DiableIII", year: 2014)
        ]
        
        let medievalGames = [
            Game(title: "Diable Immortal", year: 2018),
            Game(title: "WoW", year: 2004),
            Game(title: "WIII", year: 1997),
            Game(title: "DiableIII", year: 2014)
        ]
        
        let fantasy = Category(games: fantasyGames, label: "Fantasy")
        
        let reallife = Category(games: reallifeGames, label: "RealLife")
        
        let medieval = Category(games: medievalGames, label: "Medeival")
        
        return [fantasy, reallife, medieval]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My Awesome Game List"
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /*let imgPicker = UIImagePickerController();
        imgPicker.sourceType = .photoLibrary
        present(imgPicker, animated: true, completion: nil);*/
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count;
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section].label
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[section].games.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.section].games[indexPath.row].title
        
        return cell;

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        let game = categories[indexPath.section].games[indexPath.row];
        
        segue.destination.navigationItem.title = "Game: \(game.title)";
        
        let detailController = segue.destination as! DetailViewController
        
        detailController.game = game
        
    }


}

