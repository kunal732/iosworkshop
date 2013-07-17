//
//  gridmail.m
//  firstApp
//
//  Created by Kunal Batra on 7/17/13.
//  Copyright (c) 2013 SendGrid. All rights reserved.
//

#import "gridmail.h"
#import "AFNetworking.h"

@implementation gridmail

+ (void)sendMailFrom:(NSString *)from andTo:(NSString *)to withSubject:(NSString *)subject andBody:(NSString *)body withUser:(NSString *)user andPass:(NSString *)apipass {
    NSString *BaseURLString = @"http://www.sendgrid.com/api/";
    
    NSString *mailerUrl = [NSString stringWithFormat:@"%@mail.send.json?to=%@&from=%@&subject=%@&text=%@&api_user=%@&api_key=%@", BaseURLString,to,from, subject,body,user,apipass ];
    
    NSString *encodeUrl = [mailerUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
    NSURL *url = [NSURL URLWithString:encodeUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    
    AFJSONRequestOperation *operation =
    [AFJSONRequestOperation JSONRequestOperationWithRequest:request
     
                                                    success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
                                                        
                                                        
                                                        
                                                    }
     
                                                    failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
                                                        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error sending email"
                                                                                                     message:[NSString stringWithFormat:@"%@",error]
                                                                                                    delegate:nil
                                                                                           cancelButtonTitle:@"OK" otherButtonTitles:nil];
                                                        [av show];
                                                    }];
    
    
    [operation start];
    NSLog(@"this is the url: %@",mailerUrl);

}
@end