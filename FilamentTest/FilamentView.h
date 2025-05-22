//
//  FilamentView.h
//  FilamentTest
//
//  Created by Nikhil on 20/05/25.
//

#ifndef FilamentView_h
#define FilamentView_h

#import <UIKit/UIKit.h>
#import <ARKit/ARKit.h>

@interface FilamentView : UIView

- (instancetype)initWithFrame:(CGRect)frame
                      session:(ARSession *)session;

@end

#endif /* FilamentView_h */
