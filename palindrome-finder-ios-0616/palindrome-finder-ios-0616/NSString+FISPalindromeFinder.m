//
//  FISPalindromeFinder.m
//  palindrome-finder-ios-0616
//
//  Created by Michael Amundsen on 6/9/16.
//  Copyright © 2016 Michael Amundsen. All rights reserved.
//

#import "NSString+FISPalindromeFinder.h"

@implementation NSString (FISPalindromeFinder)

- (BOOL)detectPalindrome:(NSString *)stringToCheck {
    for (NSUInteger i = 0; i < [stringToCheck length]; i++) {
        NSUInteger lastCharacter = [stringToCheck length] - i-1;
        NSString *firstLetterInString = [NSString stringWithFormat:@"%c", [stringToCheck characterAtIndex:i]];
        NSString *lastLetterInString = [NSString stringWithFormat:@"%c", [stringToCheck characterAtIndex:lastCharacter]];
        if ([firstLetterInString isEqualToString:lastLetterInString]) {
            i++;
        } else {
            return NO;
        }
    }
    return YES;
}

- (NSString *)onlyUppercaseLetters:(NSString *)stringToClean {
    NSString *cleanedString = [[stringToClean componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""];
    cleanedString = [cleanedString uppercaseString];
    return cleanedString;
}

- (BOOL)checkIfPalindrome:(NSString *)stringToCheck {
    stringToCheck = [self onlyUppercaseLetters:stringToCheck];
    if ([self detectPalindrome:stringToCheck]) {
        return YES;
    }
    return NO;
}

@end
