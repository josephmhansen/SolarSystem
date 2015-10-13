//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Joseph Hansen on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

        
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var diameter: UILabel!
    @IBOutlet weak var dayLength: UILabel!
    @IBOutlet weak var millionKMsFromSun: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    func updateWithPlanet(planet : Planet){
        name.text = planet.name
        imageView.image = UIImage(named: planet.imageName)
        diameter.text = "diameter \(planet.diameter)"
        millionKMsFromSun.text = "distance from sun \(planet.millionKMsFromSun) 10^6km"
        dayLength.text = "day length \(planet.dayLength) hours"
        
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
