//
//  OnePeople.h
//  BaseModelProject
//
//  Created by Hosel on 2017/8/2.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import "BaseModel.h"

@interface OnePeople : BaseModel

@property (nonatomic,copy)NSString *descriptions;
@property (nonatomic,strong)NSMutableDictionary *people;

@end
