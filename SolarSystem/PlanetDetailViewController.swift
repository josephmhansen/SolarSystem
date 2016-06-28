//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Joseph Hansen on 6/28/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var Distance: UILabel!
    @IBOutlet weak var dayLength: UILabel!
   
    @IBOutlet weak var diameter: UILabel!
    
    var planet: Planet?
    func updateWithPlanet(planet: Planet) {
        title = planet.name
        image.image = UIImage(named: planet.imageName)
        Distance.text = "Distance \(planet.millionKMsFromSun)"
        dayLength.text = "Day Length \(planet.dayLength)"
        diameter.text = "Diameter \(planet.diameter)"
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        if let planet = planet {
            updateWithPlanet(planet)
        }
        
        
        
        // Do any additional setup after loading the view.
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
