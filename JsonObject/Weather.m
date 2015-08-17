//
//  Weather.m
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import "Weather.h"

@implementation Weather

-(WeatherDetail *)getWeatherDetail: (int) index{
    
    return self.weatherDetails[index];
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        self.weatherDetails = [[NSMutableArray alloc] init];
    }
    return self;
    
}


@end
