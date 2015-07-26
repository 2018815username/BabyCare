//
//  UserDefaults.m
//  BabyCare
//
//  Created by yuanhua on 7/21/15.
//  Copyright (c) 2015年 yuanhua. All rights reserved.
//

#import "UserDefaults.h"

@implementation UserDefaults

+ (void) saveObject:(id)object key:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (object != nil)
    {
        NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:object];
        [defaults setObject:encodedObject forKey:key];
    }
    else
    {
        [defaults removeObjectForKey:key];
    }
    [defaults synchronize];
}

+ (id) loadObjectWithKey:(NSString *)key
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *encodedObject = [defaults objectForKey:key];
    if (encodedObject != nil)
    {
        id object = [NSKeyedUnarchiver unarchiveObjectWithData:encodedObject];
        return object;
    }
    return nil;
}
@end
