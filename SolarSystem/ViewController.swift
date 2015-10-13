//
//  ViewController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
        
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("planets", forIndexPath: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)
        
        
        return cell

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toPlanetDetail" {
            
            if let destinationViewController = segue.destinationViewController as? PlanetDetailViewController{
                
                _ = destinationViewController.view
         
                let indexPath = tableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row{
                
                    let planet = PlanetController.planets[selectedRow]
                    destinationViewController.updateWithPlanet(planet)
                    
                }
            }
        
        }
    }
}
