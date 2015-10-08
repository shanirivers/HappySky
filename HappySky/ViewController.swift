//
//  ViewController.swift
//  HappySky
//
//  Created by Shani on 10/6/15.
//  Copyright © 2015 Shani Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentTemperatureLabel: UILabel?
    
    @IBOutlet weak var lblCurrentHumidity: UILabel?
    @IBOutlet weak var lblCurrentPrecipitation: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist"),  let weatherDictionary = NSDictionary(contentsOfFile: plistPath), let currentWeatherDictionary = weatherDictionary["currently"] as? [String: AnyObject]{
            
           let currentWeather = CurrentWeather(weatherDictionary: currentWeatherDictionary)
            
            currentTemperatureLabel?.text = "\(currentWeather.temperature)º"
            
            lblCurrentHumidity?.text = "\(currentWeather.humidity)%"
            
            lblCurrentPrecipitation?.text = "\(currentWeather.precipProbability)%"
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

