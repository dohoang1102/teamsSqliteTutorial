//
//  AddSquadraViewController.m
//  teamsSqlite
//
//  Created by Andrea Giannantonio on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddSquadraViewController.h"

@interface AddSquadraViewController ()

@end

@implementation AddSquadraViewController

@synthesize dataList;
@synthesize fieldName;
@synthesize fieldNation;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFieldName:nil];
    [self setFieldNation:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)addSquadra:(id)sender {
    
    // controlliamo se i campi sono stati inseriti
    if (([fieldName.text length] != 0)&& ([fieldNation.text length] != 0)){
        // creiamo un dizionario con i valori
        NSMutableDictionary *team = [[NSMutableDictionary alloc] initWithObjectsAndKeys:fieldName.text, @"name", fieldNation.text, @"nation", nil];
        // inseriamolo nel db
        [dataList aggiungiSquadra:team];
        // torniamo alla lista
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attenzione" message:@"Controlla di aver inserito tutti i campi necessari" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES; 
}


@end
