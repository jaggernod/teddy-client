//
//  TTRecorderTests.m
//  TTRecorderTests
//
//  Created by continuous integration on 26/11/13.
//
//

#import <XCTest/XCTest.h>
#import "TTRecorder.h"
#import "TTMockLocationProvider.h"

@interface TTRecorderTests : XCTestCase <TTRecorderDelegate>
{
    TTMockLocationProvider *_locationProvider;
    TTRecorder *_recorder;
    int _recorderStartCount;
    int _recorderStopCount;
}

@end

@implementation TTRecorderTests

- (void)didStartRecording
{
    _recorderStartCount += 1;
}

- (void)didStopRecording
{
    _recorderStopCount += 1;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _locationProvider = [[TTMockLocationProvider alloc] init];
    _recorder = [[TTRecorder alloc] initWithLocationProvider:_locationProvider];
    [_recorder setDelegate:self];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRecorderNotRecordingInInitialState
{
    XCTAssertFalse([_recorder isRecording]);
}

- (void)testRecorderStartStartsRecording
{
    [_recorder start];
    XCTAssertTrue([_recorder isRecording]);
}

- (void)testRecorderNotifiesWhenRecordingStarts
{
    [_recorder start];
    XCTAssertEqual(1, _recorderStartCount);
}

- (void)testRecorderKeepsTrackOfReceivedLocations
{
    [_recorder start];
    CLLocation *location = [[CLLocation alloc] initWithLatitude:53.2 longitude:13.4];
    [_locationProvider addLocation:location];
    XCTAssertEqual(1U, [[_recorder trace] count]);
    XCTAssertEqual(location, [[_recorder trace] objectAtIndex:0]);
}

- (void)testRecorderAddsLocationsOnlyWhenRecording
{
    CLLocation *location = [[CLLocation alloc] initWithLatitude:53.2 longitude:13.4];
    [_locationProvider addLocation:location];
    XCTAssertEqual(0U, [[_recorder trace] count]);
}

- (void)testRecorderStopStopsRecording
{
    [_recorder start];
    [_recorder stop];
    XCTAssertFalse([_recorder isRecording]);
}

- (void)testRecorderNotifiesWhenRecordingStops
{
    [_recorder start];
    [_recorder stop];
    XCTAssertEqual(1, _recorderStopCount);
}

@end
