//
//  MatrixCalculator.h
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum Axis {
    x = 0,
    y = 1,
    total = 2
};


@interface MatrixCalculator : NSObject

-(double) sumMatrix: (NSArray*) matrixOne
                    toMatrix: (NSArray*) matrixTwo NS_REFINED_FOR_SWIFT;

-(NSArray*) subtractionMatrix: (NSArray*) matrixOne
              toMatrix: (NSArray*) matrixTwo NS_REFINED_FOR_SWIFT;

-(NSArray*) multiplyMatrix: (NSArray*) matrix
                    toScalar: (NSNumber*) scalar NS_REFINED_FOR_SWIFT;

-(NSArray*) meanMatrix: (NSArray*) matrix axis: (enum Axis) coordinate NS_REFINED_FOR_SWIFT;

-(void) printMatrix: (NSArray*) matrix NS_REFINED_FOR_SWIFT; 

@end

NS_ASSUME_NONNULL_END
