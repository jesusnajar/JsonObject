//
//  Parser.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Declarations.h"

@interface Parser : NSObject
+ (WeatherObject *)parseWeatherObject;
+ (WeatherDetail *)parseWeatherDetail;
+ (NSMutableArray *)parseWeatherDetails;
+ (Weather *)parseWeather;

@end




