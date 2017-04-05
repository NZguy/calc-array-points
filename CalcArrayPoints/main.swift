//
//  main.swift
//  CalcArrayPoints
//
//  Created by Duncan Andrew on 4/4/17.
//  Copyright © 2017 Duncan Andrew. All rights reserved.
//

import Foundation

func add(left: Int, right: Int) -> Int{
    return left + right
}

func subtract(left: Int, right: Int) -> Int{
    return left - right
}

func multiply(left: Int, right: Int) -> Int{
    return left * right
}

func divide(left: Int, right: Int) -> Int{
    return left / right
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int{
    return operation(left, right)
}



func add(array: [Int]) -> Int{
    var ret = 0
    for num in array{
        ret += num
    }
    return ret
}

func multiply(array: [Int]) -> Int{
    var ret = 1
    for num in array{
        ret *= num
    }
    return ret
}

func average(array: [Int]) -> Int{
    var sum = 0
    for num in array{
        sum += num
    }
    return sum/array.count
}

func count(array: [Int]) -> Int{
    return array.count
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int{
    return operation(array)
}



func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    var ret = (0, 0)
    ret.0 = (p1.0 + p2.0)
    ret.1 = (p1.1 + p2.1)
    return ret
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    var ret = (0, 0)
    ret.0 = (p1.0 - p2.0)
    ret.1 = (p1.1 - p2.1)
    return ret
}

// Decided to return nil if any of the inputs are nil, as the user would probably not intentionally
// add a point to a nil point

// !!!!!!!!!! SAM: Please let me know if there is a better way to write this function, 
// my implementation seems super verbose
func add(p1: [String:Any]?, p2: [String:Any]?) -> [String:Double]?{
    var ret = ["x":0.0, "y":0.0]
    if(p1 != nil){
        if p1!["x"] as? Double != nil{
            ret["x"] = (p1!["x"]! as! Double)
        }else if p1!["x"] as? Int != nil{
            ret["x"] = Double(p1!["x"]! as! Int) // This is bonkers
        }else{
            return nil
        }
        if p1!["y"] as? Double != nil{
            ret["y"] = (p1!["y"]! as! Double)
        }else if p1!["y"] as? Int != nil{
            ret["y"] = Double(p1!["y"]! as! Int)
        }else{
            return nil
        }
    }else{
        return nil
    }
    
    if(p2 != nil){
        if p2!["x"] as? Double != nil{
            ret["x"]! += (p2!["x"]! as! Double) // Not sure why ret["x"] is optional here
        }else if p2!["x"] as? Int != nil{
            ret["x"]! += Double(p2!["x"]! as! Int)
        }else{
            return nil
        }
        if p2!["y"] as? Double != nil{
            ret["y"]! += (p2!["y"]! as! Double)
        }else if p2!["y"] as? Int != nil{
            ret["y"]! += Double(p2!["y"]! as! Int)
        }else{
            return nil
        }
    }else{
        return nil
    }
    
    return ret
}
// Optionals are gross

func subtract(p1: [String:Any]?, p2: [String:Any]?) -> [String:Double]?{
    var ret = ["x":0.0, "y":0.0]
    if(p1 != nil){
        if p1!["x"] as? Double != nil{
            ret["x"] = (p1!["x"]! as! Double)
        }else if p1!["x"] as? Int != nil{
            ret["x"] = Double(p1!["x"]! as! Int)
        }else{
            return nil
        }
        if p1!["y"] as? Double != nil{
            ret["y"] = (p1!["y"]! as! Double)
        }else if p1!["y"] as? Int != nil{
            ret["y"] = Double(p1!["y"]! as! Int)
        }else{
            return nil
        }
    }else{
        return nil
    }
    
    if(p2 != nil){
        if p2!["x"] as? Double != nil{
            ret["x"]! -= (p2!["x"]! as! Double)
        }else if p2!["x"] as? Int != nil{
            ret["x"]! -= Double(p2!["x"]! as! Int)
        }else{
            return nil
        }
        if p2!["y"] as? Double != nil{
            ret["y"]! -= (p2!["y"]! as! Double)
        }else if p2!["y"] as? Int != nil{
            ret["y"]! -= Double(p2!["y"]! as! Int)
        }else{
            return nil
        }
    }else{
        return nil
    }
    
    return ret
}
