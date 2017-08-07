//
//  ViewController.m
//  BaseModelProject
//
//  Created by Hosel on 2017/8/2.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import "ViewController.h"
#import "People.h"
#import "OnePeople.h"
#import "PeopleList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1、一个对象
    NSMutableDictionary *dic_peo = [NSMutableDictionary dictionaryWithObjectsAndKeys:@12,@"id",@"cfdfvd",@"name",[NSNumber numberWithInt:10],@"age",[NSNumber numberWithBool:YES],@"sex",nil];
    People *people = [[People alloc]initWithDictionary:dic_peo];
    NSLog(@"-----------------------------\n%@\nid:%@\nname:%@\nage:%ld\nsex:%@\n-----------------------------\n",people,people.Id,people.name,people.age,[NSNumber numberWithBool:people.sex]);
    
    //2、一个对象中包含对象
    NSMutableDictionary *dic_onePeo = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"一个对象中包含一个对象",@"description",dic_peo,@"people",nil];
    OnePeople *onePeople = [[OnePeople alloc]initWithDictionary:dic_onePeo];
    People *people1 = [[People alloc]initWithDictionary:onePeople.people];
    NSLog(@"-----------------------------\n%@\ndescriptions:%@\ndic:%@\npeople:%@\n-----------------------------\n",onePeople,onePeople.descriptions,onePeople.people,people1);
    
    //3、数组中对象列表
    NSMutableDictionary *dic_peo1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@22,@"id",@"vfvdf",@"name",[NSNumber numberWithInt:15],@"age",[NSNumber numberWithBool:NO],@"sex",nil];
    NSMutableArray *array = [NSMutableArray arrayWithObjects:dic_peo,dic_peo1, nil];
    NSMutableDictionary *dic_peoList = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"对象数组",@"description",array,@"peopleList",nil];
    PeopleList *peopleList = [[PeopleList alloc]initWithDictionary:dic_peoList];
    NSMutableArray *lists = [[NSMutableArray alloc]init];
    for (NSDictionary *dic in peopleList.peopleList) {
        People *peoples = [[People alloc]initWithDictionary:dic];
        [lists addObject:peoples];
    }
    NSLog(@"-----------------------------\n%@\ndescriptions:%@\narray:%@\n-----------------------------\n",peopleList,peopleList.descriptions,peopleList.peopleList);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
