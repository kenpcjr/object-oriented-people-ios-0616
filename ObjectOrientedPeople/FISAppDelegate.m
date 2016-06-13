//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    FISPerson *bob = [[FISPerson alloc]init];
    NSLog(@"Bob stats: %@, %li, %li, %@, is he qualified: %d",bob.name,bob.ageInYears,bob.heightInInches, bob.skills, bob.isQualified);
    [bob learnSkillBash];
    [bob learnSkillXcode];
    [bob learnSkillObjectiveC];
    [bob learnSkillInterfaceBuilder];
    [bob learnSkillObjectOrientedProgramming];
    NSLog(@"Bob stats: %@, %li, %li, %@, is he qualified: %d",bob.name,bob.ageInYears,bob.heightInInches, bob.skills, bob.isQualified);
    
    
    
    return YES;
}

@end
