//
//  FISPalindromeFinder.h
//  palindrome-finder-ios-0616
//
//  Created by Michael Amundsen on 6/9/16.
//  Copyright © 2016 Michael Amundsen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPalindromeFinder : NSString

@property (strong, nonatomic) NSString *stringToCheck;

- (BOOL)checkIfPalindrome;

@end
