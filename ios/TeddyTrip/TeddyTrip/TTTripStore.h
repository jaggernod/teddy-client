//
//  TTTripStore.h
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import <Foundation/Foundation.h>

@class TTRecorder;

@interface TTTripStore : NSObject

- (id)initWithRecorder:(TTRecorder*)recorder;

- (int)count;

@end
