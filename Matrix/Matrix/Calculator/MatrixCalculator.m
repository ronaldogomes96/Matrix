//
//  MatrixCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import "MatrixCalculator.h"
#import "MatrixCalculator+SumCalculator.h"
#import "MatrixCalculator+Subtractor.h"
#import "MatrixCalculator+MultiplicationByScalar.h"

@implementation MatrixCalculator

-(NSArray*) sumMatrix:(NSArray *) matrixOne toMatrix:(NSArray *) matrixTwo {
    
    NSMutableArray* mutableMatrixOne = [NSMutableArray arrayWithArray:matrixOne];
    NSMutableArray* mutableMatrixTwo = [NSMutableArray arrayWithArray:matrixTwo];
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    @try {
        result = [self sum:mutableMatrixOne toMatrix:mutableMatrixTwo];
        return result;
        
    } @catch (NSException *exception) {
        @throw exception; 
    }
}

-(NSArray*) subtractionMatrix: (NSArray*) matrixOne
                      toMatrix: (NSArray*) matrixTwo {
    NSMutableArray* mutableMatrixOne = [NSMutableArray arrayWithArray:matrixOne];
    NSMutableArray* mutableMatrixTwo = [NSMutableArray arrayWithArray:matrixTwo];
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    @try {
        result = [self subtraction: mutableMatrixOne toMatrix:mutableMatrixTwo];
        return result;
     } @catch (NSException *exception) {
         @throw exception; 
     }
}

-(NSArray*) multiplyMatrix:(NSArray *)matrix toScalar:(NSNumber *)scalar {
    NSMutableArray* mutableMatrix = [NSMutableArray arrayWithArray:matrix];
    
    NSException *nullException = [NSException exceptionWithName:@"NullException" reason:@"Passed null argument" userInfo:nil];
    
    if (mutableMatrix.count == 0 || scalar == NULL) {
        @throw nullException;
    }
    
    return [self multiply:mutableMatrix toScalar:scalar];
}

@end
