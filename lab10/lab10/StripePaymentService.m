//
//  StripePaymentService.m
//  lab10
//
//  Created by emre on 2018-09-17.
//  Copyright © 2018 emre. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)proccessPaymentAmount:(NSInteger)dollarValue{
    
    NSLog(@" $%ld with stripe", (long)dollarValue);
}

-(BOOL)canProcessPayment {
    
    return arc4random_uniform(2);
}


@end
