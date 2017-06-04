// Playground - noun: a place where people can play

import UIKit


//列舉enum，
//可明確的定義iPad機型的選項，
//在此透過case定義了iPad的機型Mini與Air
enum IPadType
{
    case Mini
    case Air
}



//在此透過列舉，
//如此就不會有誤設iPad類型的可能
let iPad = ("0011221234", IPadType.Mini, 16)


//若已知變數的型別為IPadType的列舉型別，
//則此時在代入資料至變數中時，
//只需要以點(.)的方式作開頭，
//並選取代入的case即可，
//IPadType列舉的字眼可省略
let type:IPadType = .Mini