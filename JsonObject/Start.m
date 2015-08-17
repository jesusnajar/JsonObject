//
//  ViewController.m
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import "Start.h"

#define nUagLat 20.695306
#define nUagLng -103.418190

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initData {
    mjsonWeatherObject              = [Declarations getWeather:nUagLat and:nUagLng];
    mWeatherObject                  = [Parser parseWeatherObject];
    Weather *weather                = [Parser parseWeather];
    
    WeatherDetail *weatherDetail    = [weather getWeatherDetail:0];
    print(NSLog(@"icon %@", weatherDetail.icon))
    
    
}

- (IBAction)btnGetData:(id)sender {
    
    mjsonWeatherObject    = [Declarations getWeather:nUagLat and:nUagLng];
    mWeatherObject  = [Parser parseWeatherObject];
    
    float tempKelvin        = mWeatherObject.main.temp;
    float tempCelsius       = tempKelvin - 273.15;
    self.lblTemp.text       = [NSString stringWithFormat:@"%.2f", tempCelsius];
    self.lblMax.text    = [NSString stringWithFormat:@"%.2f", mWeatherObject.main.temp_max - 273.15];
    self.lblMin.text    = [NSString stringWithFormat:@"%.2f", mWeatherObject.main.temp_min - 273.15];
    self.lblPressure.text   = [NSString stringWithFormat:@"%d", mWeatherObject.main.pressure];
    self.lblHumidity.text   = [NSString stringWithFormat:@"%d", mWeatherObject.main.humidity];
    
    //Tarea 5
    self.lblViento.text         = [NSString stringWithFormat:@"%f", mWeatherObject.wind.speed];
    self.lblVientoDeg.text      = [NSString stringWithFormat:@"%f", mWeatherObject.wind.deg];
    
    self.lblLat.text          = [NSString stringWithFormat:@"%f", mWeatherObject.coord.lat];
    self.lblLon.text          = [NSString stringWithFormat:@"%f", mWeatherObject.coord.lon];
    
    self.lblSol.text      =  [NSString stringWithFormat:@"%f", mWeatherObject.Sys.sunrise];
    self.lblPuestaSol.text      =  [NSString stringWithFormat:@"%f", mWeatherObject.Sys.sunset];
    self.lblPais.text      =  [NSString stringWithFormat:@"%@", mWeatherObject.Sys.country];
    

}
@end
