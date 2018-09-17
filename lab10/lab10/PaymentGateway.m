//
//  PaymentGateway.m
//  lab10
//
//  Created by emre on 2018-09-17.
//  Copyright © 2018 emre. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPayment:(NSInteger)amount{
    
    
    if (self.canProcessPayment)
        [self.paymentDelegate proccessPaymentAmount:amount];
    else
        NSLog(@"wrong");
    
}

-(BOOL)canProcessPayment {
    
    return arc4random_uniform(2);
    
}

@end
