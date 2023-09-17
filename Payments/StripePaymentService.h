//
//  StripePaymentService.h
//  Payments
//
//  Created by Natasha Machado on 2023-09-17.
//

#import <Foundation/Foundation.h>

#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

@end
