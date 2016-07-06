//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Joseph Hansen on 7/6/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    
    

    @IBOutlet weak var detailPlanetDayLength: UILabel!
    @IBOutlet weak var detailPlanetDiameter: UILabel!
    @IBOutlet weak var detailPlanetDistance: UILabel!
    @IBOutlet weak var detailPlanetImage: UIImageView!
    
    var planet: Planet?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            updateWithPlanet(planet)
            
            
        }
    }
    
    func updateWithPlanet(planet: Planet) {
        title = planet.name
        detailPlanetImage.image = UIImage(named: planet.imageName)
        detailPlanetDiameter.text = "\(planet.diameter)"
        detailPlanetDistance.text = "\(planet.millionKMsFromSun) 10^6km"
        detailPlanetDayLength.text = "\(planet.dayLength) hours"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
