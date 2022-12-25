//
//  WeatherModel.swift
//  Clima
//
//  Created by Fayzullayev Nurbek on 19/12/22.
//

import Foundation
struct WeatherModel{
    let conditionID:Int
    let cityName:String
    let temperature:Double
    var temperatureString : String{
        return String(format: "%.1f", temperature)
    }
    var conditionName:String{
        
        switch conditionID {
        case  200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.heavyrain"
        case 500...504:
            return "cloud.sun.rain"
        case 511:
            return "cloud.snow"
        case 520...531:
            return "cloud.drizzle"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog.fill"
        case 800:
            return "sun.max.fill"
        case 801:
            return "cloud.sun"
        case 802:
            return "smoke"
        case 803:
            return "cloud.circle"
        case 804:
            return "cloud.circle"
        default:
            return "sun.max"
                
        }
    }

}
