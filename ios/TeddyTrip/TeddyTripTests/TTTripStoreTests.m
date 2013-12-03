//
//  TTTripStoreTests.m
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import <XCTest/XCTest.h>
#import "TTTripStore.h"
#import "TTRecorder.h"
#import "TTTrip.h"
#import "TTMockLocationProvider.h"

@interface TTTripStoreTests : XCTestCase

@end

@implementation TTTripStoreTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testTripStoreEmptyOnCreation
{
    TTTripStore *tripStore = [[TTTripStore alloc] init];
    XCTAssertEqual(0, [tripStore count]);
}

- (void)testTripStoreHasPositiveCountAfterRecording
{
    TTRecorder *recorder = [[TTRecorder alloc] initWithLocationProvider:[[TTMockLocationProvider alloc] init]];
    TTTripStore *tripStore = [[TTTripStore alloc] initWithRecorder:recorder];
    [recorder start];
    [recorder stop];
    XCTAssertEqual(1, [tripStore count]);
}

- (void)testTripStoreHasTripAfterRecording
{
    TTMockLocationProvider *locationProvider = [[TTMockLocationProvider alloc] init];
    TTRecorder *recorder = [[TTRecorder alloc] initWithLocationProvider:locationProvider];
    TTTripStore *tripStore = [[TTTripStore alloc] initWithRecorder:recorder];
    [recorder start];
    CLLocation *firstLocation = [[CLLocation alloc] initWithLatitude:53.2 longitude:13.4];
    CLLocation *secondLocation = [[CLLocation alloc] initWithLatitude:53.3 longitude:13.3];
    [locationProvider addLocation:firstLocation];
    [locationProvider addLocation:secondLocation];
    [recorder stop];
    TTTrip *trip = [tripStore tripAtIndex:0];
    XCTAssertEqual([recorder distanceMeters], [trip distanceMeters]);
}

@end
