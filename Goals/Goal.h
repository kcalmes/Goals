//
//  Goal.h
//  Goals
//
//  Created by Kory Calmes on 10/5/11.
//  Copyright (c) 2011 Calmes Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Completion, Group;

@interface Goal : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * details;
@property (nonatomic, retain) NSNumber * active;
@property (nonatomic, retain) NSNumber * pointValue;
@property (nonatomic, retain) NSSet *completions;
@property (nonatomic, retain) NSManagedObject *timeFrame;
@property (nonatomic, retain) NSSet *groups;
@end

@interface Goal (CoreDataGeneratedAccessors)

- (void)addCompletionsObject:(Completion *)value;
- (void)removeCompletionsObject:(Completion *)value;
- (void)addCompletions:(NSSet *)values;
- (void)removeCompletions:(NSSet *)values;

- (void)addGroupsObject:(Group *)value;
- (void)removeGroupsObject:(Group *)value;
- (void)addGroups:(NSSet *)values;
- (void)removeGroups:(NSSet *)values;

@end
