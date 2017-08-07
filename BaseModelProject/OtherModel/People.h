//
//  People.h
//  BaseModelProject
//
//  Created by Hosel on 2017/8/2.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"

@interface People : BaseModel

@property (nonatomic,strong)NSNumber *Id;//id关键字
@property (nonatomic,copy)NSString *name;
@property (nonatomic,assign)NSInteger age;
@property (nonatomic,assign)BOOL sex;

@end
