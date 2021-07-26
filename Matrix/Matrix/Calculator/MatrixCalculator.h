//
//  MatrixCalculator.h
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MatrixCalculator : NSObject

-(NSArray*) sumMatrix: (NSArray*) matrixOne
                    toMatrix: (NSArray*) matrixTwo;

-(NSArray*) subtractionMatrix: (NSArray*) matrixOne
              toMatrix: (NSArray*) matrixTwo;

-(NSArray*) multiplyMatrix: (NSArray*) matrix
                    toScalar: (NSNumber*) scalar;


@end

NS_ASSUME_NONNULL_END
