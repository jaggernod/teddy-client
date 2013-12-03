//
//  TTTripStore.h
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import <Foundation/Foundation.h>

@class TTRecorder;
@class TTTrip;

@interface TTTripStore : NSObject

- (id)initWithRecorder:(TTRecorder*)recorder;

- (int)count;
- (TTTrip*)tripAtIndex:(int)index;

@end
