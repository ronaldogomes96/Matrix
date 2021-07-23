//
//  MatrixCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import "MatrixCalculator.h"
#import "NSObject+SubtractorCalculator.h"

@implementation MatrixCalculator

-(NSMutableArray*) subtraction: (NSMutableArray*) matrixOne
                      toMatrix: (NSMutableArray*) matrixTwo {
    @try {
        return [self subtraction:matrixOne toMatrix:matrixTwo];
     } @catch (NSException *exception) {
         NSLog(@"%@", exception.reason);
     }
}

@end
