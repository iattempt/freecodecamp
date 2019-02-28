function destroyer(arr, ...seeks) {  // O(m * n)
  seeks.forEach(seek => {  // O(n)
    let i = 0
    while (i < arr.length) {
      if (arr[i] === seek) {
        arr.splice(i, 1)
      } else {
        ++i
      }
    }
  })

  return arr;
}

// [1, 1]
console.log(destroyer([1, 2, 3, 1, 2, 3], 2, 3))
// [1, 5, 1]
console.log(destroyer([1, 2, 3, 5, 1, 2, 3], 2, 3))
// [12, 92, 65]
console.log(destroyer(["possum", "trollo", 12, "safari", "hotdog", 92, 65, "grandma", "bugati", "trojan", "yacht"], "yacht", "possum", "trollo", "safari", "hotdog", "grandma", "bugati", "trojan"))


//---------------------------------------------------------//


function destroyer(arr, ...seeks) {  // O(mlogm) + O(nlogn)
  arr.sort()    // O(mlogm)
  seeks.sort()  // O(nlogn)

  let i = 0                // O(m)
  seeks.forEach(seek => {  // O(n)
    while (i < arr.length) {
      if (arr[i] === seek) {
        arr.splice(i, 1)
      } else if (arr[i] > seek) {
        break
      } else {
        ++i
      }
    }
  })

  return arr;
}

// [1, 1].
console.log(destroyer([1, 2, 3, 1, 2, 3], 2, 3))
// [1, 1, 5].
console.log(destroyer([1, 2, 3, 5, 1, 2, 3], 2, 3))
// [12, 65, 92].
console.log(destroyer(["possum", "trollo", 12, "safari", "hotdog", 92, 65, "grandma", "bugati", "trojan", "yacht"], "yacht", "possum", "trollo", "safari", "hotdog", "grandma", "bugati", "trojan")) 
