//
//  FISPalindromeFinder.m
//  palindrome-finder-ios-0616
//
//  Created by Michael Amundsen on 6/9/16.
//  Copyright © 2016 Michael Amundsen. All rights reserved.
//

#import "FISPalindromeFinder.h"

@implementation FISPalindromeFinder

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

- (BOOL)checkIfPalindrome {
    self.stringToCheck = [self onlyUppercaseLetters:self.stringToCheck];
    if ([self detectPalindrome:self.stringToCheck]) {
        return YES;
    }
    return NO;
}

@end
