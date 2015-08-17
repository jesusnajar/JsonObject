//
//  Weather.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherDetail.h"


@interface Weather : NSObject
@property (nonatomic,strong)  NSMutableArray    *weatherDetails;

-(WeatherDetail *)getWeatherDetail: (int) index;


@end
