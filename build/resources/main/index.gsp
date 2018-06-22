<!doctype html>
<html>
<head>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
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
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'Browser market shares in January, 2018'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'Brands',
                    colorByPoint: true,
                    data: [{
                        name: 'Chrome',
                        y: 61.41,
                        sliced: true,
                        selected: true
                    }, {
                        name: 'Internet Explorer',
                        y: 11.84
                    }, {
                        name: 'Firefox',
                        y: 10.85
                    }, {
                        name: 'Edge',
                        y: 4.67
                    }, {
                        name: 'Safari',
                        y: 4.18
                    }, {
                        name: 'Sogou Explorer',
                        y: 1.64
                    }, {
                        name: 'Opera',
                        y: 1.6
                    }, {
                        name: 'QQ',
                        y: 1.2
                    }, {
                        name: 'Other',
                        y: 2.61
                    }]
                }]
            });
        }

        $(window).load(makeChart);
        makeChart();
    </script>

</head>

<body>

<div class="container" style="font-size: 11px; width: 100%">
    <div class="row">
        <div class="col-lg-6">
            <div id="myChart"></div>
        </div>
        <div class="col-lg-6">
            <table id="example" class="table table-striped table-bordered table-hover table-condensed" style="width:100%">
                <tbody>
                <tr>
                    <div class="row">
                        <td rowspan="2" class="col-lg-3 text-center" style="vertical-align: middle;"><b>Health Plan Snapshot</b></td>
                        <td colspan="2" class="col-lg-6 text-center"><b>Reporting Period</b><br>(Jun 2017 through May 2018)</td>
                        <td rowspan="2" class="col-lg-3 text-center" style="vertical-align: middle;"><b>%Change</b></td>
                    </div>
                </tr>
                <tr>
                    <td><p class="text-center"><b>Group</b></p></td>
                    <td><p class="text-center"><b>Benchmark</b></p></td>
                </tr>
                <tr>
                    <td>Medical Claims Paid</td>
                    <td>$40,978,940</td>
                    <td>--</td>
                    <td>-2.38%</td>
                </tr>
                </tbody>

            </table>
        </div>

    </div>
</div>

</body>
</html>
