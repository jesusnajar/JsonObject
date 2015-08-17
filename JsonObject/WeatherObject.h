//
//  WeatherObject.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coord.h"
#import "MainObject.h"
#import "WeatherDetail.h"
#import "Weather.h"
#import "Sys.h"
#import "Wind.h"
#import "WeatherDetail.h"

@interface WeatherObject : NSObject

@property (nonatomic) Coord             *coord;
@property (nonatomic) int               ID;
@property (nonatomic) NSString          *name;
@property (nonatomic) MainObject        *main;
@property (nonatomic) Weather           *weather;
@property (nonatomic) WeatherDetail     *weatherDet;
@property (nonatomic) Wind              *wind;
@property (nonatomic) Sys               *Sys;

@end
