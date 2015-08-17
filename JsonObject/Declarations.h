//
//  Declarations.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "SBJson.h"
#import "ObjectMapper.h"
#import "WeatherObject.h"
#import "Weather.h"

//Debug
#define nDebugEnable        1
#define print(x)            if(nDebugEnable){(x);}

//Json modes
#define nGET                0
#define nPOST               1

extern NSDictionary     *mjsonWeatherObject;
extern WeatherObject    *mWeatherObject;

@interface Declarations : NSObject
+ (NSDictionary *)getWeather:(float)lat and:(float)lng;

@end

