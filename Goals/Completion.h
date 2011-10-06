//
//  Completion.h
//  Goals
//
//  Created by Kory Calmes on 10/5/11.
//  Copyright (c) 2011 Calmes Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Goal;

@interface Completion : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) Goal *goal;

@end
