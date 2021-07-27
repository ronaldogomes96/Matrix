//
//  MatrixCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import "MatrixCalculator.h"
#import "MatrixCalculator+SumCalculator.h"
#import "MatrixCalculator+MultiplicationByScalar.h"
#import "MatrixCalculator+GetColumn.h"
#import "MatrixCalculator+MeanCalculator.h"

@implementation MatrixCalculator

-(NSMutableArray*) sumMatrix:(NSMutableArray *) matrixOne toMatrix:(NSMutableArray *) matrixTwo {
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    @try {
        result = [self sum:matrixOne toMatrix:matrixTwo];
        return result;
        
    } @catch (NSException *exception) {
        @throw exception; 
    }
}

-(NSMutableArray*) multiplyMatrix:(NSMutableArray *)matrix toScalar:(NSNumber *)scalar {
    
    NSException *nullException = [NSException exceptionWithName:@"NullException" reason:@"Passed null argument" userInfo:nil];
    
    if (matrix.count == 0 || scalar == NULL) {
        @throw nullException;
    }
    
    
    return [self multiply:matrix toScalar:scalar];
}

-(NSArray*) meanMatrix: (NSArray*) matrix axis:  (enum Axis) coordinate {
    
    NSMutableArray *multableMatrix = [NSMutableArray arrayWithArray:matrix];
    NSMutableArray *newMatrix = [[NSMutableArray alloc] init];
    
    NSException *noMatrixException = [NSException exceptionWithName:@"NoMatrixException" reason:@"Passed an array, not an matrix" userInfo:nil];
    NSException *nullException = [NSException exceptionWithName:@"NullException" reason:@"Passed null argument" userInfo:nil];
    
    //handle vector matrix
    if ([multableMatrix firstObject] == NULL) {
        @throw noMatrixException;
    }
    
    if (matrix == NULL) {
        @throw nullException;
    }
    
    
    switch (coordinate) {
        case x:
            for (int i=0; i < [[matrix firstObject] count]; i++) {
                [newMatrix addObject: [self getColumn:multableMatrix atPosition:i]];
            }
            return [self mean:newMatrix];
        case y:
            return [self mean:multableMatrix];
        case total:
            return [self totalMean:multableMatrix]; 
    }
}

@end
