//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Kenneth Cooke on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (readwrite, strong, nonatomic) NSString *name;
@property (readwrite, nonatomic) NSUInteger ageInYears;
@property (readwrite, nonatomic) NSUInteger heightInInches;
@property (readwrite,strong, nonatomic) NSMutableArray *skills;
@property (readwrite,nonatomic)BOOL isQualified;

@end

@implementation FISPerson

-(instancetype)init{
    self = [self initWithName:@"Ken" ageInYears:32 heightInInches:76];    return self;
}

-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age{
    self = [self initWithName:name ageInYears:age heightInInches:76];
    return self;
}

-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age heightInInches:(NSUInteger)height{
    
    self = [super init];
    
    if (self) {
        _name = name;
        _ageInYears = age;
        _heightInInches = height;
        _skills = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString *)celebrateBirthday{
    self.ageInYears += 1;
    NSString *ordinalBday = [self ordinalForInteger:self.ageInYears];
    NSString *birthdayWish = [NSString stringWithFormat:@"HAPPY %li%@ BIRTHDAY, %@!!!",self.ageInYears, ordinalBday,self.name];
    birthdayWish = [birthdayWish uppercaseString];
    NSLog(@"%@", birthdayWish);
    return birthdayWish;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

-(void)learnSkillBash{
    if (![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
        [self isQualifiedTutor];
    }
}

-(void)learnSkillXcode{
    if (![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
        [self isQualifiedTutor];
    }
    
}

-(void)learnSkillObjectiveC{
    if (![self.skills containsObject:@"Objective-C"]) {
        [self.skills addObject:@"Objective-C"];
        [self isQualifiedTutor];
    }
    
}

-(void)learnSkillObjectOrientedProgramming{
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
        [self isQualifiedTutor];
    }
    
}

-(void)learnSkillInterfaceBuilder{
    if (![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
        [self isQualifiedTutor];
    }
    
}

-(BOOL)isQualifiedTutor{
    NSUInteger learningProgres = [self.skills count];
    NSUInteger qualifiedToTeachAt = 4;
    if (learningProgres >= qualifiedToTeachAt) {
        self.isQualified = YES;
        return YES;
    }
    self.isQualified = NO;
    return NO;
}



@end
