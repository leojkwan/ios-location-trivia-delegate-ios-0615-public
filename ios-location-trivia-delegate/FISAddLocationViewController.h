//
//  FISAddLocationViewController.h
//  ios-location-trivia-delegate
//
//  Created by Timothy Clem on 6/23/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISAddLocationViewControllerDelegate.h"
#import "FISLocationsViewController.h"


@interface FISAddLocationViewController : UIViewController

@property (weak, nonatomic) id <FISAddLocationViewControllerDelegate> delegate;

@end
