// 編號：CANDY-015
// 程式語言：JavaScript
// 題目：把原本的字串拆解成 2 個字元一組，若不足 2 個字則補上底線
// 範例：
//      "abcdef" -> ['ab', 'cd', 'ef']
//      "abcdefg" -> ['ab', 'cd', 'ef', 'g_']

function splitString(str) {
  const regex = /.{1,2}/g;
  const splitByTwo = str.match(regex) || [];

  if (str.length % 2 !== 0) {
    splitByTwo[splitByTwo.length - 1] += "_";
  }
  return splitByTwo;
}

console.log(splitString("abcdef")); // ["ab", "cd", "ef"]
console.log(splitString("abcdefg")); // ["ab", "cd", "ef", "g_"]
console.log(splitString("")); // []

// solving steps:
// 以正規表示法找出符合一個或兩個字元的群組，並用 match() 方法找出符合條件的並形成一個新陣列，如果沒有符合則回傳 []；
// 加以判斷 str 長度若為奇數，則在最後一個字上加上 "_" 回傳至陣列中。
