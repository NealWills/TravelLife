//
//  NWColor.swift
//  SQLite
//
//  Created by Neal on 2019/11/7.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit

extension UIColor {
    class func hexColor(_ hex: String, alpha: CGFloat?=nil) -> UIColor {

        let alpha = alpha ?? 1

        if !hex.hasPrefix("#") {
            return UIColor.clear
        }

        if hex.count != 7 {
            return UIColor.clear
        }

        let rgbR = hex[1..<2].hexInt * 16 + hex[2..<3].hexInt

        let rgbG = hex[3..<4].hexInt * 16 + hex[4..<5].hexInt

        let rgbB = hex[5..<6].hexInt * 16 + hex[6..<7].hexInt

        return UIColor.init(red: CGFloat(rgbR) / 255.0, green: CGFloat(rgbG) / 255.0, blue: CGFloat(rgbB) / 255.0, alpha: alpha)
    }
}

/// 整理自 https://www.sioe.cn/yingyong/yanse-rgb-16/
public struct ColorList {

    /// 浅粉红 #FFB6C1
    static let lightPink = #colorLiteral(red: 1, green: 0.7154400945, blue: 0.7585559487, alpha: 1)
  
    /// 粉红 #FFC0CB
    static let pink = #colorLiteral(red: 1, green: 0.7529411765, blue: 0.7960784314, alpha: 1)
    
    /// 猩红 #DC143C
    static let crimson = #colorLiteral(red: 0.862745098, green: 0.07843137255, blue: 0.2352941176, alpha: 1)
    
    /// 脸红的淡紫色   #FFF0F5
    static let lavenderBlush = #colorLiteral(red: 1, green: 0.9411764706, blue: 0.9607843137, alpha: 1)
    
    /// 苍白的紫罗兰红色   #DB7093
    static let paleVioletRed = #colorLiteral(red: 0.8588235294, green: 0.4392156863, blue: 0.5764705882, alpha: 1)
    
    /// 热情的粉红   #FF69B4
    static let hotPink = #colorLiteral(red: 1, green: 0.4117647059, blue: 0.7058823529, alpha: 1)
    
    /// 深粉色   #FF1493
    static let deepPink = #colorLiteral(red: 1, green: 0.07843137255, blue: 0.5764705882, alpha: 1)
    
    /// 适中的紫罗兰红色   #C71585
    static let mediumVioletRed = #colorLiteral(red: 0.7803921569, green: 0.08235294118, blue: 0.5215686275, alpha: 1)
    
    /// 兰花的紫色   #DA70D6
    static let orchid = #colorLiteral(red: 0.8549019608, green: 0.4392156863, blue: 0.8392156863, alpha: 1)

    /// 蓟   #D8BFD8
    static let thistle = #colorLiteral(red: 0.8470588235, green: 0.7490196078, blue: 0.8470588235, alpha: 1)
    
    /// 李子   #DDA0DD
    static let plum = #colorLiteral(red: 0.8666666667, green: 0.6274509804, blue: 0.8666666667, alpha: 1)
    
    /// 紫罗兰   #EE82EE
    static let violet = #colorLiteral(red: 0.9333333333, green: 0.5098039216, blue: 0.9333333333, alpha: 1)

    /// 洋红   #FF00FF
    static let magenta = #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1)
    
    /// 灯笼海棠(紫红色)   #FF00FF
    static let fuchsia = #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1)
    
    /// 深洋红色   #8B008B
    static let darkMagenta = #colorLiteral(red: 0.5450980392, green: 0, blue: 0.5450980392, alpha: 1)

    /// 紫色   #800080
    static let purple = #colorLiteral(red: 0.5019607843, green: 0, blue: 0.5019607843, alpha: 1)
    
    /// 适中的兰花紫   #BA55D3
    static let mediumOrchid = #colorLiteral(red: 0.7294117647, green: 0.3333333333, blue: 0.8274509804, alpha: 1)
    
    /// 深紫罗兰色   #9400D3
    static let darkVoilet = #colorLiteral(red: 0.5803921569, green: 0, blue: 0.8274509804, alpha: 1)
    
    /// 深兰花紫   #9932CC
    static let darkOrchid = #colorLiteral(red: 0.6, green: 0.1960784314, blue: 0.8, alpha: 1)
    
    /// 靛青   #4B0082
    static let indigo = #colorLiteral(red: 0.2941176471, green: 0, blue: 0.5098039216, alpha: 1)
    
    /// 深紫罗兰的蓝色   #8A2BE2
    static let blueViolet = #colorLiteral(red: 0.5411764706, green: 0.168627451, blue: 0.8862745098, alpha: 1)
    
    /// 适中的紫色   #9370DB
    static let mediumPurple = #colorLiteral(red: 0.5764705882, green: 0.4392156863, blue: 0.8588235294, alpha: 1)
    
    /// 适中的板岩暗蓝灰色   #7B68EE
    static let mediumSlateBlue = #colorLiteral(red: 0.4823529412, green: 0.4078431373, blue: 0.9333333333, alpha: 1)
    
    /// 板岩暗蓝灰色   #6A5ACD
    static let slateBlue = #colorLiteral(red: 0.4156862745, green: 0.3529411765, blue: 0.8039215686, alpha: 1)
    
    /// 深岩暗蓝灰色   #483D8B
    static let darkSlateBlue = #colorLiteral(red: 0.2823529412, green: 0.2392156863, blue: 0.5450980392, alpha: 1)
    
    /// 熏衣草花的淡紫色   #E6E6FA
    static let lavender = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9803921569, alpha: 1)
    
    /// 幽灵的白色   #F8F8FF
    static let ghostWhite = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1, alpha: 1)
    
    /// 纯蓝   #0000FF
    static let blue = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)

    /// 适中的蓝色   #0000CD
    static let mediumBlue = #colorLiteral(red: 0, green: 0, blue: 0.8039215686, alpha: 1)
    
    /// 午夜的蓝色   #191970
    static let midnightBlue = #colorLiteral(red: 0.09803921569, green: 0.09803921569, blue: 0.4392156863, alpha: 1)
    
    /// 深蓝色   #00008B
    static let darkBlue = #colorLiteral(red: 0, green: 0, blue: 0.5450980392, alpha: 1)
    
    /// 海军蓝   #000080
    static let navy = #colorLiteral(red: 0, green: 0, blue: 0.5019607843, alpha: 1)
    
    /// 皇家蓝   #4169E1
    static let royalBlue = #colorLiteral(red: 0.2549019608, green: 0.4117647059, blue: 0.8823529412, alpha: 1)
    
    /// 矢车菊的蓝色   #6495ED
    static let cornflowerBlue = #colorLiteral(red: 0.2549019608, green: 0.4117647059, blue: 0.8823529412, alpha: 1)
    
    /// 淡钢蓝   #B0C4DE
    static let lightSteelBlue = #colorLiteral(red: 0.6901960784, green: 0.768627451, blue: 0.8705882353, alpha: 1)
    
    /// 浅石板灰   #778899
    static let lightSlateGray = #colorLiteral(red: 0.4666666667, green: 0.5333333333, blue: 0.6, alpha: 1)
    
    /// 石板灰   #708090
    static let slateGray = #colorLiteral(red: 0.4392156863, green: 0.5019607843, blue: 0.5647058824, alpha: 1)
    
    /// 道奇蓝       #1E90FF
    static let doderBlue = #colorLiteral(red: 0.1176470588, green: 0.5647058824, blue: 1, alpha: 1)
    
    /// 爱丽丝蓝       #F0F8FF
    static let aliceBlue = #colorLiteral(red: 0.9411764706, green: 0.9725490196, blue: 1, alpha: 1)
    
    /// 钢蓝       #4682B4
    static let steelBlue = #colorLiteral(red: 0.2745098039, green: 0.5098039216, blue: 0.7058823529, alpha: 1)
    
    /// 淡蓝色   #87CEFA
    static let lightSkyBlue = #colorLiteral(red: 0.5294117647, green: 0.8078431373, blue: 0.9803921569, alpha: 1)
    
    /// 天蓝色   #87CEEB
    static let skyBlue = #colorLiteral(red: 0.5294117647, green: 0.8078431373, blue: 0.9215686275, alpha: 1)
    
    /// 深天蓝   #00BFFF
    static let deepSkyBlue = #colorLiteral(red: 0, green: 0.7490196078, blue: 1, alpha: 1)
    
    /// 淡蓝   #ADD8E6
    static let lightBLue = #colorLiteral(red: 0.6784313725, green: 0.8470588235, blue: 0.9019607843, alpha: 1)
    
    /// 火药蓝   #B0E0E6
    static let powDerBlue = #colorLiteral(red: 0.6901960784, green: 0.8784313725, blue: 0.9019607843, alpha: 1)
    
    /// 军校蓝   #5F9EA0
    static let cadetBlue = #colorLiteral(red: 0.3725490196, green: 0.6196078431, blue: 0.6274509804, alpha: 1)
    
    /// 蔚蓝色   #F0FFFF
    static let azure = #colorLiteral(red: 0.9411764706, green: 1, blue: 1, alpha: 1)
    
    /// 淡青色   #F0FFFF
    static let lightCyan = #colorLiteral(red: 0.8823529412, green: 1, blue: 1, alpha: 1)
    
    /// 苍白的绿宝石   #AFEEEE
    static let paleTurquoise = #colorLiteral(red: 0.6862745098, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
    
    /// 青色   #00FFFF
    static let cyan = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)
    
    /// 水绿色   #00FFFF
    static let aqua = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)
    
    /// 深绿宝石   #00CED1
    static let darkTurquoise = #colorLiteral(red: 0, green: 0.8078431373, blue: 0.8196078431, alpha: 1)
    
    /// 深石板灰   #2F4F4F
    static let darkSlateGray = #colorLiteral(red: 0.1843137255, green: 0.3098039216, blue: 0.3098039216, alpha: 1)
    
    /// 深青色   #008B8B
    static let darkCyan = #colorLiteral(red: 0, green: 0.5450980392, blue: 0.5450980392, alpha: 1)
    
    /// 水鸭色   #008080
    static let teal = #colorLiteral(red: 0, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
    
    /// 适中的绿宝石   #48D1CC
    static let mediumTurquoise = #colorLiteral(red: 0.2823529412, green: 0.8196078431, blue: 0.8, alpha: 1)
    
    /// 浅海洋绿   #20B2AA
    static let lightSeaGreen = #colorLiteral(red: 0.1254901961, green: 0.6980392157, blue: 0.6666666667, alpha: 1)
    
    /// 绿宝石   #40E0D0
    static let turquoise = #colorLiteral(red: 0.2509803922, green: 0.8784313725, blue: 0.8156862745, alpha: 1)
    
    /// 绿玉\碧绿色   #7FFFAA
    static let auqamarin = #colorLiteral(red: 0.4980392157, green: 1, blue: 0.6666666667, alpha: 1)
    
    /// 适中的碧绿色   #00FA9A
    static let mediumAquamarine = #colorLiteral(red: 0, green: 0.9803921569, blue: 0.6039215686, alpha: 1)
    
    /// 适中的春天的绿色   #00FF7F
    static let mediumSpringGreen = #colorLiteral(red: 0, green: 1, blue: 0.4980392157, alpha: 1)
    
    /// 薄荷奶油   #F5FFFA
    static let mintCream = #colorLiteral(red: 0.9607843137, green: 1, blue: 0.9803921569, alpha: 1)
    
    /// 春天的绿色   #3CB371
    static let springGreen = #colorLiteral(red: 0.2352941176, green: 0.7019607843, blue: 0.4431372549, alpha: 1)
    
    /// 海洋绿   #2E8B57
    static let seaGreen = #colorLiteral(red: 0.1803921569, green: 0.5450980392, blue: 0.3411764706, alpha: 1)
    
    /// 蜂蜜   #F0FFF0
    static let honeydew = #colorLiteral(red: 0.9411764706, green: 1, blue: 0.9411764706, alpha: 1)
    
    /// 淡绿色   #90EE90
    static let lightGreen = #colorLiteral(red: 0.5647058824, green: 0.9333333333, blue: 0.5647058824, alpha: 1)
    
    /// 苍白的绿色   #98FB98
    static let paleGreen = #colorLiteral(red: 0.5960784314, green: 0.9843137255, blue: 0.5960784314, alpha: 1)
    
    /// 深海洋绿   #8FBC8F
    static let darkSeaGreen = #colorLiteral(red: 0.5607843137, green: 0.737254902, blue: 0.5607843137, alpha: 1)
    
    /// 酸橙绿   #32CD32
    static let limeGreen = #colorLiteral(red: 0.1960784314, green: 0.8039215686, blue: 0.1960784314, alpha: 1)
    
    /// 酸橙色   #00FF00
    static let lime = #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)
    
    /// 森林绿   #228B22
    static let forestGreen = #colorLiteral(red: 0.1333333333, green: 0.5450980392, blue: 0.1333333333, alpha: 1)
    
    /// 纯绿   #008000
    static let green = #colorLiteral(red: 0, green: 0.5019607843, blue: 0, alpha: 1)
    
    /// 深绿色   #006400
    static let darkGreen = #colorLiteral(red: 0, green: 0.3921568627, blue: 0, alpha: 1)
    
    /// 查特酒绿   #7FFF00
    static let chartreuse = #colorLiteral(red: 0.4980392157, green: 1, blue: 0, alpha: 1)
    
    /// 草坪绿   #7CFC00
    static let lawnGreen = #colorLiteral(red: 0.4862745098, green: 0.9882352941, blue: 0, alpha: 1)
    
    /// 绿黄色   #ADFF2F
    static let greenYellow = #colorLiteral(red: 0.6784313725, green: 1, blue: 0.1843137255, alpha: 1)
    
    /// 橄榄土褐色   #556B2F
    static let oliveDrab = #colorLiteral(red: 0.3333333333, green: 0.4196078431, blue: 0.1843137255, alpha: 1)
    
    /// 米色(浅褐色)   #F5F5DC
    static let beige = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.862745098, alpha: 1)
    
    /// 浅秋麒麟黄   #FAFAD2
    static let lightGoldenrodYellow = #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.8235294118, alpha: 1)
    
    /// 象牙   #FFFFF0
    static let ivory = #colorLiteral(red: 1, green: 1, blue: 0.9411764706, alpha: 1)
    
    /// 浅黄色   #FFFFE0
    static let lightYellow = #colorLiteral(red: 1, green: 1, blue: 0.8784313725, alpha: 1)
    
    /// 纯黄   #FFFF00
    static let yellow = #colorLiteral(red: 1, green: 1, blue: 0, alpha: 1)
    
    /// 橄榄   #808000
    static let olive = #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0, alpha: 1)
    
    /// 深卡其布   #BDB76B
    static let darkKhaki = #colorLiteral(red: 0.7411764706, green: 0.7176470588, blue: 0.4196078431, alpha: 1)
    
    /// 柠檬薄纱   #FFFACD
    static let lemonChiffon = #colorLiteral(red: 1, green: 0.9803921569, blue: 0.8039215686, alpha: 1)
    
    /// 灰秋麒麟   #EEE8AA
    static let paleGodenrod = #colorLiteral(red: 0.9333333333, green: 0.9098039216, blue: 0.6666666667, alpha: 1)
    
    /// 卡其布   #F0E68C
    static let khaki = #colorLiteral(red: 0.9411764706, green: 0.9019607843, blue: 0.5490196078, alpha: 1)
    
    /// 金   #FFD700
    static let gold = #colorLiteral(red: 1, green: 0.8431372549, blue: 0, alpha: 1)
    
    /// 玉米色   #FFF8DC
    static let cornislk = #colorLiteral(red: 1, green: 0.9725490196, blue: 0.862745098, alpha: 1)
    
    /// 秋麒麟   #DAA520
    static let goldEnrod = #colorLiteral(red: 0.8549019608, green: 0.6470588235, blue: 0.1254901961, alpha: 1)
    
    /// 花的白色   #FFFAF0
    static let floralWhite = #colorLiteral(red: 1, green: 0.9803921569, blue: 0.9411764706, alpha: 1)
    
    /// 老饰带   #FDF5E6
    static let oldLace = #colorLiteral(red: 0.9921568627, green: 0.9607843137, blue: 0.9019607843, alpha: 1)
    
    /// 小麦色   #F5DEB3
    static let wheat = #colorLiteral(red: 0.9607843137, green: 0.8705882353, blue: 0.7019607843, alpha: 1)
    
    /// 鹿皮鞋   #FFE4B5
    static let moccasin = #colorLiteral(red: 1, green: 0.8941176471, blue: 0.7098039216, alpha: 1)
    
    /// 橙色   #FFA500
    static let orange = #colorLiteral(red: 1, green: 0.6470588235, blue: 0, alpha: 1)
    
    /// 番木瓜   #FFEFD5
    static let papayaWhip = #colorLiteral(red: 1, green: 0.937254902, blue: 0.8352941176, alpha: 1)
    
    /// 漂白的杏仁   #FFEBCD
    static let blanchedAlmond = #colorLiteral(red: 1, green: 0.9215686275, blue: 0.8039215686, alpha: 1)
    
    /// 纳瓦霍白   #FFDEAD
    static let navajoWhite = #colorLiteral(red: 1, green: 0.8705882353, blue: 0.6784313725, alpha: 1)
    
    /// 古代的白色   #FAEBD7
    static let antiqueWhite = #colorLiteral(red: 0.9803921569, green: 0.9215686275, blue: 0.8431372549, alpha: 1)
    
    /// 晒黑   #D2B48C
    static let tan = #colorLiteral(red: 0.8235294118, green: 0.7058823529, blue: 0.5490196078, alpha: 1)
    
    /// 结实的树   #DEB887
    static let brulyWood = #colorLiteral(red: 0.8705882353, green: 0.7215686275, blue: 0.5294117647, alpha: 1)
    
    /// (浓汤)乳脂,番茄等   #FFE4C4
    static let bisque = #colorLiteral(red: 1, green: 0.8941176471, blue: 0.768627451, alpha: 1)
    
    /// 深橙色   #FF8C00
    static let darkOrange = #colorLiteral(red: 1, green: 0.5490196078, blue: 0, alpha: 1)
    
    /// 亚麻布   #FAF0E6
    static let linen = #colorLiteral(red: 0.9803921569, green: 0.9411764706, blue: 0.9019607843, alpha: 1)
    
    /// 秘鲁   #CD853F
    static let peru = #colorLiteral(red: 0.8039215686, green: 0.5215686275, blue: 0.2470588235, alpha: 1)
    
    /// 桃色   #FFDAB9
    static let peachPuff = #colorLiteral(red: 1, green: 0.8549019608, blue: 0.7254901961, alpha: 1)
    
    /// 沙棕色   #F4A460
    static let sandyBrown = #colorLiteral(red: 0.9568627451, green: 0.6431372549, blue: 0.3764705882, alpha: 1)

    /// 巧克力   #D2691E
    static let chocolate = #colorLiteral(red: 0.8235294118, green: 0.4117647059, blue: 0.1176470588, alpha: 1)
    
    /// 马鞍棕色   #8B4513
    static let saddleBrown = #colorLiteral(red: 0.5450980392, green: 0.2705882353, blue: 0.07450980392, alpha: 1)
    
    /// 海贝壳   #FFF5EE
    static let seaShell = #colorLiteral(red: 1, green: 0.9607843137, blue: 0.9333333333, alpha: 1)
    
    /// 黄土赭色   #A0522D
    static let sienna = #colorLiteral(red: 0.6274509804, green: 0.3215686275, blue: 0.1764705882, alpha: 1)
    
    /// 浅鲜肉(鲑鱼)色   #FFA07A
    static let lightSalmon = #colorLiteral(red: 1, green: 0.6274509804, blue: 0.4784313725, alpha: 1)
    
    /// 珊瑚   #FFA07A
    static let coral = #colorLiteral(red: 1, green: 0.4980392157, blue: 0.3137254902, alpha: 1)
    
    /// 橙红色   #FF4500
    static let orangeRed = #colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)
    
    /// 深鲜肉(鲑鱼)色   #E9967A
    static let darkSalmon = #colorLiteral(red: 0.9137254902, green: 0.5882352941, blue: 0.4784313725, alpha: 1)

    /// 番茄   #FF6347
    static let tomato = #colorLiteral(red: 1, green: 0.3882352941, blue: 0.2784313725, alpha: 1)
    
    /// 薄雾玫瑰   #FFE4E1
    static let mistyRose = #colorLiteral(red: 1, green: 0.8941176471, blue: 0.8823529412, alpha: 1)
    
    /// 鲜肉(鲑鱼)色   #FA8072
    static let salmon = #colorLiteral(red: 0.9803921569, green: 0.5019607843, blue: 0.4470588235, alpha: 1)
    
    /// 雪   #FFFAFA
    static let snow = #colorLiteral(red: 1, green: 0.9803921569, blue: 0.9803921569, alpha: 1)
    
    /// 淡珊瑚色   #F08080
    static let lightCoral = #colorLiteral(red: 0.9411764706, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
    
    /// 玫瑰棕色   #BC8F8F
    static let rosyBrown = #colorLiteral(red: 0.737254902, green: 0.5607843137, blue: 0.5607843137, alpha: 1)
    
    /// 印度红   #CD5C5C
    static let indianRed = #colorLiteral(red: 0.8039215686, green: 0.3607843137, blue: 0.3607843137, alpha: 1)
    
    /// 纯红   #FF0000
    static let red = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
    
    /// 棕色   #A52A2A
    static let brown = #colorLiteral(red: 0.6470588235, green: 0.1647058824, blue: 0.1647058824, alpha: 1)
    
    /// 耐火砖   #B22222
    static let fireBrick = #colorLiteral(red: 0.6980392157, green: 0.1333333333, blue: 0.1333333333, alpha: 1)
    
    /// 深红色  #8B0000
    static let darkRed = #colorLiteral(red: 0.5450980392, green: 0, blue: 0, alpha: 1)
    
    /// 栗色  #800000
    static let maroon = #colorLiteral(red: 0.5019607843, green: 0, blue: 0, alpha: 1)
    
    /// 纯白  #FFFFFF
    static let white = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    /// 白烟  #F5F5F5
    static let whiteSmoke = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
    
    /// 亮灰色  #DCDCDC
    static let gainsboro = #colorLiteral(red: 0.862745098, green: 0.862745098, blue: 0.862745098, alpha: 1)
    
    /// 浅灰色  #D3D3D3
    static let lightGrey = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)

    /// 银白色  #C0C0C0
    static let silver = #colorLiteral(red: 0.7529411765, green: 0.7529411765, blue: 0.7529411765, alpha: 1)
    
    /// 深灰色  #A9A9A9
    static let darkGray = #colorLiteral(red: 0.662745098, green: 0.662745098, blue: 0.662745098, alpha: 1)
    
    /// 灰色  #808080
    static let gray = #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
    
    /// 暗淡的灰色  #696969
    public static let dimGray = #colorLiteral(red: 0.4117647059, green: 0.4117647059, blue: 0.4117647059, alpha: 1)
    
    /// 纯黑  #000000
    static let black = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

    
}
