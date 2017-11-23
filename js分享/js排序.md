```
// fromIndex: 当前元素所在位置索引, toIndex: 移动到指定索引
var moveItem = function(arr, fromIndex, toIndex) {
    for (var k in arr) {
        var item = arr[k];
        if (k == fromIndex) {
            arr.splice(k, 1);
            arr.splice(toIndex, 0, item);
            break;
        }
    }
    return arr;
}
```
