//
//  PaymentGateway.h
//  lab10
//
//  Created by emre on 2018-09-17.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PaymentDelegate <NSObject>

-(void)proccessPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

-(void)processPayment:(NSInteger)amount;
-(BOOL)canProcessPayment;


@property (weak, nonatomic) id<PaymentDelegate> paymentDelegate;

@end
