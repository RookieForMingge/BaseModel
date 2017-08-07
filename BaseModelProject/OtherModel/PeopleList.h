//
//  PeopleList.h
//  BaseModelProject
//
//  Created by Hosel on 2017/8/2.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import "BaseModel.h"

@interface PeopleList : BaseModel

@property (nonatomic,copy)NSString *descriptions;
@property (nonatomic,strong)NSMutableArray *peopleList;

@end
