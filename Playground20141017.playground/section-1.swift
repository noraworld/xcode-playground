// Playground - noun: a place where people can play

import UIKit

// test for Xcode programming
var str = "Hello, playground"
var abc = "This is the test for Xcode."
println("hello")
println(str)




// wikipediaのサンプルコードを参考にXcodeに慣れてみる
println("Hello World!")

// var nameType = valueでType型の変数nameを宣言し、valueで初期化する
var explicitDouble:Double = 70
// 型が省略された場合は、型推論により初期値の型が適用される
var implicitInteger = 70  // 浮動小数点を入力しなかったのでint
var implicitDouble = 70.0 // 浮動小数点を入力したのでdouble

// let name:Type = valueでType型の定数nameにvalueを設定する
// 型推論可能な場合、型の表記は省略できる
let theAnswer = 42

// 識別子にはたいていのUnicode文字を用いることができる
let リンゴの数 = 3
let みかんの数 = 5

// 文字列リテラル"..."の中にある\(expr)には、式exprの内容が展開される
let リンゴ説明 = "私は\(リンゴの数)個のリンゴを持っている。"
let 果実説明 = "私は\(リンゴの数 + みかんの数)個の果実を持っている。"

// Swiftでは辞書も組み込みでサポートされている
// 以下はDictionary<Srting, Int>型の定数辞書の定義の一例である
let people = ["Anna": 67, "Bety": 8, "Jack": 33, "Sam": 25]

// 辞書の内容の列挙は for(key, value) in dict {...}
for (name, age) in people {
    println("\(name) is \(age) years old.")
}

// メソッドや関数は"func"文法を使って宣言する
// パラメータ名の付け方に注意. -> で戻り値の値を宣言する
func sayHello(personName: String) -> String {
    let greeting = "こんにちは、" + personName + "さん"
    return greeting
}
println(sayHello("花子"))

// Swiftでは型推論が可能な場合には型の記述を省略できる
let pi: Double = 3.141592
let pi_2 = 3.141592 // 型名を省略できる

// 数値リテラルのプレフィックスは"0b"で2進数、"0o"で8進数、"0x"で16進数
let dec = 29
let bin = 0b11101
let oct = 0o35
let hex = 0x1D

// 浮動小数点リテラルは、通常の十進数表記に加え16進数表記もサポート
let π = 3.1415926535897931
let pi_hex = 0x1.921fb54442d18p+1

// 整数型と浮動小数点型のどちらでも、コードの見やすさのためにアンダースコア
// を桁の区切りとして挿入できる。また数値の右側（プレフィックスの後ろ）を
// ゼロで埋めて表記できる
let threeHundMillion = 300_000_000
let bitMask = 0b0010_0000




// 文字列
let hello = "こんにちは"
let emptyString = ""
let anotherEmptyString = String()

// 文字列は+演算子および+=演算子で連結できる
let name = "太郎"
println("こんにちは、" + name + "さん")

// 文字列リテラル内で\()で囲まれた式は文字列補間によって展開
let celsius = 30.0
println("今日の気温は摂氏\(celsius)度、華氏\(celsius * 1.8 + 32)度です。")

// for-in文で1文字ずつCharacter型で取り出せる
for character in "aαあ亜" {
    println(character)
}

// なんかよくわからない
let str_2 = "aαあ亜"
//println(countElements(str_2))
//println(str_2.utf16Count)
println((str_2 as NSString).length)
println(str_2._bridgeToObjectiveC().length)




// 配列
var arrayOfChars: [Character]
var arrayOfInts = [Int]() // 空の配列として初期化

let fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
let transcendentals = [2.7182818284590451, 3.1415926535897931]
let falsies = [false, true, 0, 0.0, ""]

// []は配列リテラル
// ただし要素の型を指定する必要がある
var ints: [Int] = []
var doubles: [Double] = []
var any: [Any] = []
var unknown = [] // エラーになるはずだけどなぜかならない

// 配列の結合、代入
var ints1 = [10, 20, 30]
var ints2 = [40, 50]
ints1 = ints1 + ints2
ints2[1] = 55
// ints1[1...2] = ints2
ints1 = ints2




// 辞書
var name2num = [String:Int]()
name2num["zero"] = 0
name2num["one"]  = 1

let name2num_2 = ["zero":0, "one":1, "two":2]

var dict: [String: Int] = [:]
var unknowndict = [:] // エラーになるはずだけどならない