//
//  TTTripStore.h
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import <Foundation/Foundation.h>

@class TTTrip;

@interface TTTripStore : NSObject

- (id)init;

- (int)count;
- (TTTrip*)tripAtIndex:(int)index;

@end
