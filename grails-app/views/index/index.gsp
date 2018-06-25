<!doctype html>
<html>
<head>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:javascript src="application.js"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>

    <script>
        function makeChart() {
            Highcharts.chart('myChart', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Claims Paid Graph'
                },
                xAxis: {
                    categories: [
                        'Medical',
                        'Pharmacy',
                        'Dental'
                    ],
                    crosshair: true
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Payment ($)'
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0">$<b>{point.y:.1f}</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name: 'Group',
                    data: [20978, 25740, 9780]

                }, {
                    name: 'Benchmark',
                    data: [20000, 30000, 10000]

                }]
            });
        }

        $(window).load(makeChart);
        makeChart();
    </script>

</head>

<body style="font-size: 11px;">

<div class="container">
    <div class="row fill-complete-height">
        <div class="col-lg-6 fill-complete-height">
            <div id="myChart" class="fill-complete-height"></div>
        </div>
        <div class="col-lg-6 fill-complete-height">
            <table class="table table-striped table-bordered table-hover table-condensed">
                <tbody>
                <tr class="active">
                    <div class="row">
                        <td rowspan="2" class="rowspan2 col-lg-3 text-center"><b>Health Plan Snapshot</b></td>
                        <td colspan="2" class="col-lg-6 text-center"><b>Reporting Period</b><br>(May 2018 through Jun 2018)</td>
                        <td rowspan="2" class="rowspan2 col-lg-3 text-center"><b>Change</b></td>
                    </div>
                </tr>
                <tr class="active">
                    <td><p class="text-center"><b>Group</b></p></td>
                    <td><p class="text-center"><b>Benchmark</b></p></td>
                </tr>

                <g:each in="${claimsMapArray}">
                    <tr class="${it.className}">
                        <td>${it.claimsName}</td>
                        <td>$${it.payment}</td>
                        <td>$${it.benchmark}</td>
                        <td>${it.difference}</td>
                    </tr>
                </g:each>
                </tbody>

            </table>
        </div>

    </div>
</div>

</body>
</html>