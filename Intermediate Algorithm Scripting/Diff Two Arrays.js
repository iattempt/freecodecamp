function diffArray(arr1, arr2) {  // O(mlogm + nlogn)
  var newArr = [];
  // Same, same; but different.
  arr1.sort()
  arr2.sort()

  let i1 = 0, i2 = 0
  while (i1 < arr1.length && i2 < arr2.length) {
    if (arr1[i1] === arr2[i2]) {
      arr1.splice(i1, 1)
      arr2.splice(i2, 1)
    } else if (arr1[i1] < arr2[i2]) {
      ++i1
    } else {
      ++i2
    }
  }
  newArr = arr1.concat(arr2)

  return newArr;
}

// [4]
console.log(diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]));
// ['pink wool']
console.log(diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"]));
