## 时间戳转字符串
```js
// 时间戳转字符串

secondToMinute: function(time) {
    var parseInt = window.parseInt;
    var second = time;
    var min = 0; // 分
    var hour = 0; // 小时
    var supple = function(str) {
        if (str <= 9) return '0' + str;
        return str;
    };
    if (!time) return '-';
    if (time > 60) {
        second = parseInt(time % 60);
        min = parseInt(time / 60);
        if (min > 60) {
            min = parseInt(time / 60) % 60;
            hour = parseInt(parseInt(time / 60) / 60);
        }
    }
    return supple(hour) + ':' + supple(min) + ':' + supple(second);
}
```

## 数字转汉字
```js
// 数字转汉字
var options = {
    chnNumChar: ['零', '一', '二', '三', '四', '五', '六', '七', '八', '九'],
    chnUnitChar: ['', '十', '百', '千'],
    before: '第',
    after: '节'
};
var numberToChinese = function(number) {
    var num = number,
        resetStr = [],
        unitPos = 0,
        v;
    if (number > 9999) return number;
    while (num > 0) {
        v = num % 10;
        resetStr.unshift(options.chnUnitChar[unitPos++]);
        resetStr.unshift(options.chnNumChar[v]);
        num = Math.floor(num / 10);
    }
    return resetStr.join('')
    .replace(/^一十/, '十')
    .replace(/零$/, '')
    .replace(/零./g, '零')
    .replace(/零+/, '零');
};
```