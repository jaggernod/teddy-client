//
//  TTAppDelegate.h
//  TeddyTrip
//
//  Created by continuous integration on 26/11/13.
//
//

#import <UIKit/UIKit.h>

@class TTTripStore;

@interface TTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (TTTripStore*)tripStore;

@end
