// 編號：CANDY-020
// 程式語言：JavaScript
// 題目：檢查字串的 x 跟 o 的數量是不是一樣多，不分大小寫

function xxoo(str) {
  const xCount = [...str].filter(
    (element) => element.toLowerCase() === "x"
  ).length;
  const oCount = [...str].filter(
    (element) => element.toLowerCase() === "o"
  ).length;
  return xCount === oCount;
}

console.log(xxoo("ooxx")); // true
console.log(xxoo("xxoo")); // true
console.log(xxoo("xxooo")); // false
console.log(xxoo("xoox")); // true
console.log(xxoo("ooAA")); // false
console.log(xxoo("xoXoA")); // true

// solving steps:
// 以陣列展開 str 以回傳的長度去判斷有幾個 x 跟 o，最後比較兩者是否一致。
