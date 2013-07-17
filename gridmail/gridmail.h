//
//  gridmail.h
//  firstApp
//
//  Created by Kunal Batra on 7/17/13.
//  Copyright (c) 2013 SendGrid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface gridmail : NSObject

+ (void)sendMailFrom:(NSString *)from andTo:(NSString *)to withSubject:(NSString *)subject andBody:(NSString *)body withUser:(NSString *)user andPass:(NSString *)apipass;


@end
