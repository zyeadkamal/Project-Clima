//
//  WeatherModel.swift
//  Clima
//
//  Created by zeyad on 2/25/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
struct WeatherModel {
    let conditionID : Int
    let temp : Double
    let cityName : String
    var tempString :String {
        String(format: "%.1f", temp)
    }
    
    var conditionName : String{
        switch conditionID {
               case 200...232:
                   return "cloud.bolt"
               case 300...321:
                   return "cloud.drizzle"
               case 500...531:
                   return "cloud.rain"
               case 600...622:
                   return "cloud.snow"
               case 701...781:
                   return "cloud.fog"
               case 800:
                   return "sun.max"
               case 801...804:
                   return "cloud.bolt"
               default:
                   return "cloud"
               }
    }
    
}
