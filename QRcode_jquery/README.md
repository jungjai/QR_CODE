# jQuery로 QR코드 생성하기

## 사용법

```
<script>
	jQuery('#gcDiv').qrcode({     // Start QR코드
		render	: "table",          // table, canvas 형식 2개
		width : 300,                // 넓이
		height : 300,               // 높이
		text	: "jungjai"           // qr코드를 생성할 문자열
	});
</script>
```

- render : table, carvas 형식 구분
- width : 넓이
- height : 높이
- text : QR코드 생성할 문자열

## 사용된 도구

- [jQuery](<https://jquery.com/>) - 자바스크립트의 생상성을 향상시켜주는 자바스크립트 라이브러리