//
//  ViewController.h
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Parser.h"


@interface Start : UIViewController

@property (nonatomic,strong)    Declarations            *Declarations;
@property (nonatomic,strong)    Parser                  *Parser;


//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblTemp;
@property (strong, nonatomic) IBOutlet UILabel *lblMax;
@property (strong, nonatomic) IBOutlet UILabel *lblMin;
@property (strong, nonatomic) IBOutlet UILabel *lblPressure;

@property (strong, nonatomic) IBOutlet UILabel *lblHumidity;
@property (strong, nonatomic) IBOutlet UILabel *lblLon;
@property (strong, nonatomic) IBOutlet UILabel *lblLat;
@property (strong, nonatomic) IBOutlet UILabel *lblViento;
@property (strong, nonatomic) IBOutlet UILabel *lblVientoDeg;
@property (strong, nonatomic) IBOutlet UILabel *lblPais;
@property (strong, nonatomic) IBOutlet UILabel *lblSol;
@property (strong, nonatomic) IBOutlet UILabel *lblPuestaSol;

@property (strong, nonatomic) IBOutlet UILabel *lblDescription;

//Acciones
- (IBAction)btnGetData:(id)sender;

@end

