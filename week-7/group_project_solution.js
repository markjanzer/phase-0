function sum(arr) {
  var sum = 0;
  for(var i = 0; i < arr.length; i++) {
    sum += arr[i]
  }
  return sum;
}

function median(arr) {
  arr = arr.sort();
  var half = Math.floor(arr.length / 2);
  return (arr[half] + arr[half + 1])/2
}

function mean(arr) {
  return sum(arr)/arr.length
}
