//
//  FISAddLocationViewControllerDelegate.h
//  ios-location-trivia-delegate
//
//  Created by Leo Kwan on 6/25/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FISAddLocationViewController;

@protocol FISAddLocationViewControllerDelegate <NSObject>

@required

-(void)addLocationViewControllerDidCancel:(FISAddLocationViewController *)viewController;
-(void)addLocationViewController:(FISAddLocationViewController *)viewController didAddLocationNamed:(NSString *)locationName;


-(BOOL)addLocationViewController:(FISAddLocationViewController *)viewController shouldAllowLocationNamed:(NSString *)locationName;


@end
