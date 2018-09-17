//
//  ApplePaymentService.m
//  lab10
//
//  Created by emre on 2018-09-17.
//  Copyright © 2018 emre. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)proccessPaymentAmount:(NSInteger)dollarValue{
    
    NSLog(@"$%ld with Apple.", (long)dollarValue);
}

-(BOOL)canProcessPayment {
    
    return arc4random_uniform(2);
}
@end
