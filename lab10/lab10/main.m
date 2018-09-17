//
//  main.m
//  lab10
//
//  Created by emre on 2018-09-17.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger dollarValue = arc4random_uniform(90) + 100;
        
        NSLog(@" 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple:");
        
        char userInput[255];
        fgets(userInput, 255, stdin);
        NSString *input = [[NSString stringWithCString:userInput encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        int userSelection = [input intValue];
        
        
        
        PaymentGateway *payment = [[PaymentGateway alloc]init];
        
        if (userSelection == 1){
            NSLog(@"Thank you for choosing Paypal");
            PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
            payment.paymentDelegate = paypal;
            [payment processPayment:dollarValue];
            
            
        } else if (userSelection == 2){
            NSLog(@"Thank you for choosing Stripe");
            StripePaymentService *stripe = [[StripePaymentService alloc]init];
            payment.paymentDelegate = stripe;
            [payment processPayment:dollarValue];
            
        }else if (userSelection == 3){
            NSLog(@"Thank you for choosing Amazon");
            AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
            payment.paymentDelegate = amazon;
            [payment processPayment:dollarValue];
        } else if (userSelection == 4){
            NSLog(@"Thank you for choosing Apple");
            ApplePaymentService *apple = [[ApplePaymentService alloc]init];
            payment.paymentDelegate = apple;
            [payment processPayment:dollarValue];
        }
        
        
        
        
        
        
        
        
    }
    return 0;
}
