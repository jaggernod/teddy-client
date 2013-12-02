//
//  TTViewController.h
//  TeddyTrip
//
//  Created by continuous integration on 26/11/13.
//
//

#import <UIKit/UIKit.h>
#import "TTRecorder.h"

@interface TTViewController : UIViewController <TTRecorderDelegate>

@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;

- (IBAction)startButtonPressed:(id)sender;

@end
