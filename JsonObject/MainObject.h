//
//  MainObject.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainObject : NSObject
@property (nonatomic) float     temp;
@property (nonatomic) int       pressure;
@property (nonatomic) int       humidity;
@property (nonatomic) float     temp_min;
@property (nonatomic) float     temp_max;
@property (nonatomic) float     speed;
@end
