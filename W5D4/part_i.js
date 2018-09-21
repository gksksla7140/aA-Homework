function madLib(verb,adj,noun) {
  return 'We shall ${verb.toUpperCase} adj ${adj.toUpperCase} and ${noun.toUpperCase}'
}


function isSubstring(phrase, subphrase) {
  return phrase.includes(subphrase);
}


function fizzBuzz(arr) {
  const result = [];
  arr.forEach(el =>{
    if ((el % 3 === 0 ) ^ (el % 5 === 0))
    result.push(el);

  });

  return result

}

function isPrime (n) {
  if (n < 2) {return false }

  for(let i = 2; i < n; i++){
    if (n % i === 0 ){
      return false
    }
  }
  return true

}


function sumPrime(n) {
  let sum = 0;
  let count = 0;
  let i = 2 ;

  while (count < n ){
    if (isPrime(i)){
      sum += i ;
      count++;
    }
    i++
  }
  return sum

}

console.log(sumPrime(3))
