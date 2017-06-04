// Playground - noun: a place where people can play

import UIKit


//以money表示有多少現金
var money = 13000

//當然，可以變成連續的if思考能力，
//若現金>=12000時，
//就買iPad Air
if money >= 12000
{
    println("買iPad Air")
}
else if money > 10000 && money < 12000 //否則有10000以上，且小於12000，則買iPad mini
{
    println("買iPad mini")
}
else if !(money > 10000)//否則如果現金沒有大於10000元，則回家存錢
{
    println("回家存錢...")
}

