//
//  main.swift
//  swift
//
//  Created by Wang on 2022/7/19.
//

import Cocoa
class Student {
    
    var name : String
    var major : String
    var age : Int
    init(name : String="auto",major : String="auto",age : Int=1){
        self.name=name
        self.major=major
        self.age=age
    }
    
    func study (time:Float){
        print("学生学习了",time,"个小时")
    }
}


let stu = Student();
stu.study(time: 12.3)





