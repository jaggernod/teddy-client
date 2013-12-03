//
//  TTRecordViewController.m
//  TeddyTrip
//
//  Created by continuous integration on 26/11/13.
//
//

#import "TTRecordViewController.h"
#import "TTRecorder.h"

@interface TTRecordViewController ()
{
    CLLocationManager *_locationManager;
    TTLocationProvider *_locationProvider;
    TTRecorder *_recorder;
}

@end

@implementation TTRecordViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _locationManager = [[CLLocationManager alloc] init];
    _locationProvider = [[TTLocationProvider alloc] initWithLocationManager:_locationManager];
    _recorder = [[TTRecorder alloc] initWithLocationProvider:_locationProvider];
    [_recorder setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startButtonPressed:(id)sender
{
    [_recorder start];
}

- (void)stopButtonPressed:(id)sender
{
    [_recorder stop];
}

- (void)didStartRecording
{
    [[self startButton] setHidden:YES];
    [[self stopButton] setHidden:NO];
}

- (void)didStopRecording
{
    [[self startButton] setHidden:NO];
    [[self stopButton] setHidden:YES];
}

- (void)distanceDidChange:(double)distanceMeters
{
    [[self distanceLabel] setText:[NSString stringWithFormat:@"%.0f m", distanceMeters]];
}

@end
