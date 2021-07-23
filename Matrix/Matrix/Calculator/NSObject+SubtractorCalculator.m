//
//  NSObject+SubtractorCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 23/07/21.
//

#import "NSObject+SubtractorCalculator.h"

@implementation NSObject (SubtractorCalculator)

- (NSMutableArray *)subtraction: (NSMutableArray *)matrixOne toMatrix:(NSMutableArray *)matrixTwo {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    if ([matrixOne count] == 0 || [matrixTwo count] == 0) {
        [NSException raise:@"Arrays is empty" format:@"Arrats must not be empty"];
    }
    else if ([matrixOne count] != [matrixTwo count]) {
        [NSException raise:@"Arrays not be the same size" format:@"The Arrays don't have the same size"];
    }
    
    for (int i=0; i < [matrixOne count]; i++) {
        
        NSMutableArray *row = [[NSMutableArray alloc] init];
        
        for (int j=0; j < [matrixOne.firstObject count]; j++) {
            
            double num1 = [[[matrixOne objectAtIndex:i] objectAtIndex:j] doubleValue];
            double num2 = [[[matrixTwo objectAtIndex:i] objectAtIndex:j] doubleValue];
            
            [row addObject: [NSNumber numberWithDouble: num1 - num2]];
        }
        
        [result insertObject:row atIndex:i];
    }
    
    return result;
}

@end
