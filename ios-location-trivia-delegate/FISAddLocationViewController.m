//
//  FISAddLocationViewController.m
//  ios-location-trivia-delegate
//
//  Created by Timothy Clem on 6/23/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAddLocationViewController.h"


@interface FISAddLocationViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;


@end

@implementation FISAddLocationViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
//    self.saveButton.enabled = NO;
    [self.delegate addLocationViewController:self shouldAllowLocationNamed:@"Jim"];
    self.nameField.delegate = self;
}

-(IBAction)cancelButtonTapped:(id)sender
{
    [self.delegate addLocationViewControllerDidCancel:self];
}

-(IBAction)saveButtonTapped:(id)sender
{
    NSString *locationString = self.nameField.text;

    [self.delegate addLocationViewController:self didAddLocationNamed:locationString];
    
}


- (IBAction)editingChanged:(id)sender {
    NSString *locationString = self.nameField.text;
    
    if ([self.delegate addLocationViewController:self shouldAllowLocationNamed:locationString]) {
        self.saveButton.enabled = YES;
        NSLog(@"Valid");
    } else {
        self.saveButton.enabled = NO;
        NSLog(@"Invalid");
    }
    
}


//-(BOOL)textFieldShouldReturn:(UITextField *)textField {
//    
//    //Check to see that location doesn't exist
//    if ([self.delegate addLocationViewController:self
//                        shouldAllowLocationNamed:self.nameField.text]) {
//        self.saveButton.enabled = YES;
//        return YES;
//
//    } else {
//        
//        return NO;
//    }
//}


-(BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
