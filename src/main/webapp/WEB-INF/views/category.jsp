<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Course category</title>
<link href="<c:url value="/resources/common/dc.css" />" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="<c:url value="/resources/common/jquery-1.11.1.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/common/d3.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/common/crossfilter.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/common/dc.js" />"></script>
<%-- <script type="text/javascript"
	src="<c:url value="/resources/js/charts.js" />"></script> --%>
<script type="text/javascript">
	var chart_url = "/category/messages";
	jQuery(document).ready(function(){
		jQuery.get(chart_url, function(data){
			persons = data;
			showCharts();
		});
	});
	
	function showCharts(){
		ndx = crossfilter(persons);
		nameDim = ndx.dimension(function(d){return d.name;})
		ageDim = ndx.dimension(function(d){return d.age;})
		namePieChart = dc.pieChart("#name_pie_chart");
		agePieChart = dc.pieChart("#age_pie_chart");
		setNamePieChart();
		setAgePieChart();
		dc.renderAll();
		function setNamePieChart(){
			var nameGroup = nameDim.group().reduceCount();
			namePieChart.width(180)
			        .height(180)
			        .radius(80)
			        .innerRadius(30)
			        .dimension(nameDim)
			        .group(nameGroup);
		}
		function setAgePieChart(){
			var ageGroup = ageDim.group().reduceCount();
			agePieChart.width(180)
				        .height(180)
				        .radius(80)
				        .innerRadius(30)
				        .dimension(ageDim)
				        .group(ageGroup);
		}
	}

</script>

</head>
<body>
	<p>Hello this is category page</p>
	<div id="name_pie_chart"></div>
	<div id="age_pie_chart"></div>
</body>
</html>