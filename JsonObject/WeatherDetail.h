//
//  WeatherDetail.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherDetail : NSObject
@property (nonatomic) int                   ID;
@property (nonatomic,strong)  NSString      *main;
@property (nonatomic,strong)  NSString      *Description;
@property (nonatomic,strong)  NSString      *icon;


@end
