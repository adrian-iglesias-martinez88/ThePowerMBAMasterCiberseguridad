const avengers = ['Hulk', 'Thor', 'IronMan', 'Captain A.', 'Spiderman', 'Captain M.'];
  function findLongestWord(param) {
    let longestWord = param[0];
  
    for (let i = 1; i < param.length; i++) {
      const element = param[i];
  
      if (element.length > longestWord.length) {
        longestWord = element;
      }
    }
    return longestWord;
  }
  
  console.log(findLongestWord(avengers))