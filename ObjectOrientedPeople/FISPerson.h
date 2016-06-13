//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Kenneth Cooke on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (readonly, strong, nonatomic) NSString *name;
@property (readonly, nonatomic) NSUInteger ageInYears;
@property (readonly, nonatomic) NSUInteger heightInInches;
@property (readonly,strong, nonatomic) NSMutableArray *skills;
@property (readonly,nonatomic)BOOL isQualified;

-(instancetype)init;
-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age;
-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age heightInInches:(NSUInteger)height;

-(NSString *)celebrateBirthday;
-(void)learnSkillBash;
-(void)learnSkillXcode;
-(void)learnSkillObjectiveC;
-(void)learnSkillObjectOrientedProgramming;
-(void)learnSkillInterfaceBuilder;
-(BOOL)isQualifiedTutor;



@end
