//
//  PaypalPaymentService.m
//  lab10
//
//  Created by emre on 2018-09-17.
//  Copyright © 2018 emre. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)proccessPaymentAmount:(NSInteger)dollarValue{
    
    NSLog(@"$%ld with Paypal", (long)dollarValue);
}

-(BOOL)canProcessPayment {
    
    return arc4random_uniform(2);
}

@end
