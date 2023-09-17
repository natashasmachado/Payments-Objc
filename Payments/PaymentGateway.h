//
//  PaymentGateway.h
//  Payments
//
//  Created by Natasha Machado on 2023-09-17.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger)amount;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)amount;

@end
