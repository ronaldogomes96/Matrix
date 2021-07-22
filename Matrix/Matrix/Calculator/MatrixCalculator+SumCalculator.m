//
//  MatrixCalculator+SumCalculator.m
//  Matrix
//
//  Created by Jéssica Araujo on 22/07/21.
//

#import "MatrixCalculator+SumCalculator.h"

@implementation MatrixCalculator (SumCalculator)

-(NSMutableArray*) sum:(NSMutableArray*) matrixOne toMatrix:(NSMutableArray*) matrixTwo {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    //check if the matrices are null 
    
    //check if the dimensions are equal
    
    for (int i=0; i < [matrixOne count]; i++) {
        
        NSMutableArray *row = [[NSMutableArray alloc] init];
        
        for (int j=0; j < [matrixOne.firstObject count]; j++) {

            double num1 = [[[matrixOne objectAtIndex:i] objectAtIndex:j]doubleValue];
            double num2 = [[[matrixTwo objectAtIndex:i] objectAtIndex:j]doubleValue];
            
            [row addObject: [NSNumber numberWithDouble:num1+num2]];
            
        }
        
        [result insertObject:row atIndex:i];
    }
    
    return result;
}

@end
