<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Quay thử xổ số- quay số may mắn</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/80C99855-2787-344C-97DE-13ACC7A372D1/main.js" charset="UTF-8"></script><script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>

<table class="result-tt" cellpadding="4" cellspacing="1">
   <tbody>
      <tr>
         <td style="width:60px;">Giải ĐB</td>
         <td style="width:400px;"><span id="p70" class="red kq"></span></td>
         <td rowspan="10" valign="top">
            <table class="dau-duoi-mb" cellpadding="1" cellspacing="1" style="width:100px;float:right;border=1px;">
               <tbody>
                  <tr style="background-color: gainsboro;height:28px;">
                     <td class="dau">Đầu</td>
                     <td class="duoi">Đuôi</td>
                  </tr>
                  <tr>
                     <td>0</td>
                     <td id="tag0">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>1</td>
                     <td id="tag1">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>2</td>
                     <td id="tag2">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>3</td>
                     <td id="tag3">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>4</td>
                     <td id="tag4">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>5</td>
                     <td id="tag5">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>6</td>
                     <td id="tag6">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>7</td>
                     <td id="tag7">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>8</td>
                     <td id="tag8">&nbsp;</td>
                  </tr>
                  <tr>
                     <td>9</td>
                     <td id="tag9">&nbsp;</td>
                  </tr>
               </tbody>
            </table>
         </td>
      </tr>
      <tr>
         <td>Giải 1</td>
         <td><span id="p00" class="kq"></span></td>
      </tr>
      <tr>
         <td>Giải 2</td>
         <td><span id="p10" class="kq"></span><br><span id="p11" class="kq"></span></td>
      </tr>
      <tr>
         <td>Giải 3</td>
         <td><span id="p20" class="kq"></span><br><span id="p21" class="kq"></span><br><span id="p22" class="kq"></span><br><span id="p23" class="kq"></span><br><span id="p24" class="kq"></span><br><span id="p25" class="kq"></span></td>
      </tr>
      <tr>
         <td>Giải 4</td>
         <td><span id="p30" class="kq"></span><br><span id="p31" class="kq"></span><br><span id="p32" class="kq"></span><br><span id="p33" class="kq"></span></td>
      </tr>
      <tr>
         <td>Giải 5</td>
         <td><span id="p40" class="kq"></span><br><span id="p41" class="kq"></span><br><span id="p42" class="kq"></span><br><span id="p43" class="kq"></span><br><span id="p44" class="kq"></span><br><span id="p45" class="kq"></span></td>
      </tr>
      <tr>
         <td>Giải 6</td>
         <td><span id="p50" class="kq"></span><br><span id="p51" class="kq"></span><br><span id="p52" class="kq"></span></td>
      </tr>
      <tr>
         <td>Giải 7</td>
         <td><span id="p60" class="kq"></span><br><span id="p61" class="kq"></span><br><span id="p62" class="kq"></span><br><span id="p63" class="kq"></span></td>
      </tr>
      <tr>
         <td colspan="7" style="text-align:left;"><input id="trybt" type="button" value="Quay thử" onclick="doTimer(1)">
            <input type="button" value="Xem kết quả" onclick="stopTimer()">
         </td>
      </tr>
   </tbody>
</table>

<script type="text/javascript">
number;
function addZero(number, len) {
    if (number.length == len) return number;
    var remaining = len - number.length;
    var i = 0;
    var zerostr = '';
    while (i < remaining) {
        zerostr += '0';
        i++;
    }
    return zerostr + number;
}

function getNumber(lennum) {
    var lev = 0;
    switch (lennum) {
        case 2:
            lev = 100;
            break;
        case 3:
            lev = 1000;
            break;
        case 4:
            lev = 10000;
            break;
        case 5:
            lev = 100000;
            break;
        case 6:
            lev = 1000000;
            break;
        default:
            lev = 1;
            break;
    }
    var randomnumber = Math.floor(Math.random() * lev)
    return addZero(randomnumber + '', lennum);
}
var mbInfos = null;
var mnInfos = null;
var areaInfos;

function generateLottery(area) {
    if ((null == mbInfos) || (null == mnInfos)) {
        mbInfos = new Array();
        mbInfos[0] = new Array(1, 5);
        mbInfos[1] = new Array(2, 5);
        mbInfos[2] = new Array(6, 5);
        mbInfos[3] = new Array(4, 4);
        mbInfos[4] = new Array(6, 4);
        mbInfos[5] = new Array(3, 3);
        mbInfos[6] = new Array(4, 2);
        mbInfos[7] = new Array(1, 5);
        mnInfos = new Array();
        mnInfos[0] = new Array(1, 5);
        mnInfos[1] = new Array(1, 5);
        mnInfos[2] = new Array(2, 5);
        mnInfos[3] = new Array(7, 5);
        mnInfos[4] = new Array(1, 4);
        mnInfos[5] = new Array(3, 4);
        mnInfos[6] = new Array(1, 3);
        mnInfos[7] = new Array(1, 2);
        mnInfos[8] = new Array(1, 6);
    }
    areaInfos = (area == 1) ? mbInfos : mnInfos;
    var lenPrize;
    var randNum;
    var tagValues = new Array("", "", "", "", "", "", "", "", "", "");
    var tagValue;
    var tagId;
    for (var i = 0; i < areaInfos.length; i++) {
        lenPrize = areaInfos[i][1];
        if (i < 8) {
            for (var j = 0; j < areaInfos[i][0]; j++) {
                tagValue = getNumber(lenPrize);
                document.getElementById(('p' + i) + j).innerHTML = tagValue;
                if (tagValue.length > 1) {
                    tagId = parseInt(tagValue.charAt(tagValue.length - 2));
                    if (tagValues[tagId].length > 0) tagValues[tagId] += ",";
                    tagValues[tagId] += tagValue.charAt(tagValue.length - 1);
                }
            }
        } else {
            if (area == 2) {
                randNum = getNumber(6);
                document.getElementById('p80').innerHTML = randNum.substr(1, randNum.length);
                document.getElementById('p81').innerHTML = randNum;
                tagValue = randNum;
                if (tagValue.length > 1) {
                    tagId = parseInt(tagValue.charAt(tagValue.length - 2));
                    if (tagValues[tagId].length > 0) tagValues[tagId] += ",";
                    tagValues[tagId] += tagValue.charAt(tagValue.length - 1);
                }
            } else {
                tagValue = getNumber(lenPrize);
                document.getElementById('p80').innerHTML = tagValue;
                if (tagValue.length > 1) {
                    tagId = parseInt(tagValue.charAt(tagValue.length - 2));
                    if (tagValues[tagId].length > 0) tagValues[tagId] += ",";
                    tagValues[tagId] += tagValue.charAt(tagValue.length - 1);
                }
            }
        }
    }
    for (var k = 0; k < tagValues.length; k++) {
        document.getElementById('tag' + k).innerHTML = tagValues[k];
    }
}
var t;
var timer_is_on = 0;

function doTimer(arCode) {
    document.getElementById('trybt').value = 'Quay tiếp';
    if (!timer_is_on) {
        timer_is_on = 1;
        t = setInterval("generateLottery(" + arCode + ")", 50);
    }
}

function summary() {
	// Hàm để lấy dựng bảng tổng hợp
	var allResults = [];
	var summary = {};
	for (var i = 0; i < 10; i++) {
        summary[i] = new Array();
    }
	$('.kq').each(function(index) {
		allResults.push($(this).text() % 100);
	});
	
	$.each(allResults, function(index, value) {
		for (var i = 0; i < 10; i++) {
			if(value < (i + 1) * 10) {
				newValue = summary[i];
				newValue.push(value%10);
				summary[i] = newValue;
				break;
			}
		}
	});
	
	for (var i = 0; i < 10; i++) {
		var data = summary[i];
		$('#tag'+i).text(data.join(','));
	}
}

function stopTimer() {
    clearTimeout(t);
    timer_is_on = 0;
	
	// Dừng quay, tính số theo yêu cầu
	var s1 = $('#p20').text() % 10; // Lấy số cuối của 1 số
	var s2 = $('#p45').text() / 1000; // Chia cho 1000 -> làm tròn xuống để lấy đc số thứ 4 của 1 số
	var s3 = s1 + '' + Math.floor(s2);
	if(typeof number != 'undefined')
		$('#p60').text(number);
		
	number = s3;
	
	// Tổng hợp kết quả vào bảng
	summary();
}
</script>
</body>
</html>