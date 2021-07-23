//
//  MatrixCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import "MatrixCalculator.h"
#import "MatrixCalculator+SumCalculator.h"

@implementation MatrixCalculator


-(NSMutableArray*) sumMatrix:(NSMutableArray *) matrixOne toMatrix:(NSMutableArray *) matrixTwo {
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    @try {
        
        result = [self sum:matrixOne toMatrix:matrixTwo];
        return result;
        
    } @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
    }
}

@end
