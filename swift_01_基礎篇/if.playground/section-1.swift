// Playground - noun: a place where people can play

import UIKit



//以money表示有多少現金
var money = 13000


//透過if賦予程式邏輯
//若現金>=12000時，
//就買iPad Air
if money >= 12000
{
    println("買iPad Air")
}


//以money1表示有多少現金
var money1 = 13000

//當然，可以變成連續的if思考能力，
//若現金>=12000時，
//就買iPad Air
if money1 >= 12000
{
    println("買iPad Air")
}
else if money1 > 10000 //否則有10000以上，則買iPad mini
{
    println("買iPad mini")
}
else //否則回家存錢
{
    println("回家存錢...")
}

