//
//  Sys.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Sys : NSObject
@property (nonatomic) float sunrise;
@property (nonatomic) float sunset;
@property (nonatomic,strong)  NSString      *country;

@end
