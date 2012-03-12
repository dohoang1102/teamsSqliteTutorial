//
//  AddSquadraViewController.h
//  teamsSqlite
//
//  Created by Andrea Giannantonio on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"

@interface AddSquadraViewController : UIViewController <UITextFieldDelegate>

@property (assign, nonatomic) Data *dataList;

@property (weak, nonatomic) IBOutlet UITextField *fieldName;
@property (weak, nonatomic) IBOutlet UITextField *fieldNation;

- (IBAction)addSquadra:(id)sender;

@end
