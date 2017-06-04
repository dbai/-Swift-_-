// Playground - noun: a place where people can play

import UIKit


class iPad
{
    //製作palyVideoWithVolume方法，
    //為了要在播放影片時可決定音量與是否全螢幕，
    //因此會加入2個參數，
    //分別表示音量與是否全螢幕，
    //並以逗號","隔開，
    //每個參數除了參數名稱外，
    //後面會透過冒號(:)的方式指定參數的型別，
    //特別的是第2個參數還會在參數前方，
    //加上外部參數名稱inFullScreen，
    //用以在呼叫時清楚的表明參數的用途，
    //而第1個參數的描述，
    //則會與方法連在一起(WithVolume)，
    //如此也會很清楚第1個參數的用途
    func palyVideoWithVolume(vol:Int, inFullScreen isFull:Bool)
    {
        println("播放影片，音量\(vol)，全螢幕播放：\(isFull)")
    }
}

let pad1 = iPad()
//呼叫播放影片方法時，透過小括號帶入參數值，
//此方法有2個參數，
//因此會以逗號","隔開，
//其中第2個參數，
//必須明確給予參數名inFullScreen，
//接著以冒號":"的方式帶入參數值，
//這是Swift的習慣，
//目的在呼叫方法時，
//可以很清楚了解代入的參數的目的，
//第第1個參數的描述，
//則會與方法名稱結合，
//如此也會很清楚知道第1個參數的用途
pad1.palyVideoWithVolume(10, inFullScreen:true)


pad1.palyVideoWithVolume(5, inFullScreen:false)
