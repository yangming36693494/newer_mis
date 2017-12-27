/**
 * Date对象扩展
 * @param {String} format
 */
Date.prototype.format = function (format) {
    var date = {
        'M+': this.getMonth() + 1,
        'd+': this.getDate(),
        'h+': this.getHours(),
        'm+': this.getMinutes(),
        's+': this.getSeconds(),
        'q+': Math.floor((this.getMonth() + 3) / 3),
        'S+': this.getMilliseconds()
    };
    if (/(y+)/i.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + '').substr(4 - RegExp.$1.length));
    }
    for (var k in date) {
        if (new RegExp('(' + k + ')').test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? date[k] : ('00' + date[k]).substr(('' + date[k]).length));
        }
    }
    return format;
}

/**
 * 格式化时间
 * @param value
 */
function formatTime(value) {
    var d = new Date(value);
    return d.format('yyyy-MM-dd hh:mm:ss');
}

function formatDate(value) {
    var d = new Date(value);
    return d.format('yyyy-MM-dd');
}
