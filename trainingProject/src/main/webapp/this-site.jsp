<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>当サイトについて</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@include file="header-navi.jsp"%>
	<div class="this-site">
		<h1 class="this-site-title">当サイトについて</h1>

		<table class="this-site-table">
			<tbody>
				<tr>
					<th class="this-site-th">店名</th>
					<td class="this-site-td">インテリアマーケット</td>
				</tr>
				<tr>
					<th class="this-site-th">会社名</th>
					<td class="this-site-td">株式会社カイハツ</td>
				</tr>
				<tr>
					<th class="this-site-th">住所</th>
					<td class="this-site-td">〒106-2837<br><br>東京都渋谷区1-2-3
					</td>
				</tr>
				<tr>
					<th class="this-site-th">電話番号</th>
					<td class="this-site-td">06-3719-0826</td>
				</tr>
				<tr>
					<th class="this-site-th">取り扱い商品</th>
					<td class="this-site-td">いろいろな家具を扱っています。</td>
				</tr>
				<tr>
					<th class="this-site-th">メッセージ</th>
					<td class="this-site-td">当サイトを拝見いただきありがとうございます。</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@include file="footer-navi.jsp"%>
</body>
</html>