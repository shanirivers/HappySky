//
//  CurrentWeather.swift
//  HappySky
//
//  Created by Shani on 10/7/15.
//  Copyright © 2015 Shani Rivers. All rights reserved.
//

import UIKit

struct CurrentWeather {
    let temperature: Int
    let humidity: Int
    let precipProbability: Int
    let summary: String
    
    init(weatherDictionary: [String: AnyObject]) {
        temperature = weatherDictionary["temperature"] as! Int
        
        // Cast humidity as a float
        let humidityFloat = weatherDictionary["humidity"] as! Float
        humidity = Int(humidityFloat * 100)
        let precipFloat = weatherDictionary["precipProbability"] as! Float
        precipProbability = Int(precipFloat * 100)
        summary = weatherDictionary["summary"] as! String
    }
}
