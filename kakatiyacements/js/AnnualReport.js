
let StratYearData = {};
//id, StratYear, EndYear, Title, Path
function saveDesignationData(Title, StratYear, EndYear, Path) {
    if (StratYear in StratYearData) {

        StratYearData[StratYear].push({ Title, EndYear, Path });
    } else {

        StratYearData[StratYear] = [{ Title, EndYear, Path }];
    }
}


//var dataBind = `<div class="">
//    <h4 class="section-title">Annual Reports and Annual Returns</h4>
//</div>`;
////id, StratYear, EndYear, Title, Path
//function dataLoad() {
//    $.ajax({
//        type: "POST",
//        url: "Admin/AnnualReport.asmx/AnnualReportData",
//        contentType: "application/xml; charset=utf-8",
//        dataType: "xml",
//        success: function (r) {
//            var tableData = $(r).find('NewDataSet').find('Table');
//            tableData.each(function () {
//                var rowData = $(this);
//                var Title = rowData.find('Title').text();
//                var StratYear = rowData.find('StratYear').text();
//                var EndYear = rowData.find('EndYear').text();
//                var Path = rowData.find('Path').text();
//                saveDesignationData(Title, StratYear, EndYear,Path);

//            });
//           // var sortedYears = Object.keys(StratYearData).map(Number).sort((a, b) => b - a);
//            for (let StratYear in sortedYears) {
//                var StratYearType =Number( StratYear);
//                dataBind += `<table class="table table-striped border-bottom">
//                                        <thead class="thead-dark">
//                                            <tr>
//                                                <th scope="col">Financial Year (${StratYearType} - ${StratYearType+1})</th>
//                                            </tr>
//                                        </thead> <tbody>`;
//                sortedYears[StratYear].forEach(item => {
//                    dataBind += `<tr>
//                                                <td>
//                                                    <a href="${item.Path}" target="_blank">
//                                                        <img src="img/pdf_icon.png">${item.Title}
//                                                    </a>
//                                                </td>
//                                            </tr>
//`;
//                });
//                dataBind += `</tbody>
//                                    </table>`;
//            }


//            document.getElementById("tableData").innerHTML = dataBind;
//        },
//        error: function (r) {
//            alert(r.responseText);
//        },
//        failure: function (r) {
//            alert(r.responseText);
//        }
//    });
//}
dataLoad();
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/AnnualReport.asmx/AnnualReportData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var Title = rowData.find('Title').text();
                var StratYear = rowData.find('StratYear').text();
                var EndYear = rowData.find('EndYear').text();
                var Path = rowData.find('Path').text();
                saveDesignationData(Title, StratYear, EndYear, Path);
            });

            // Sorting the StratYearData keys in descending order
            var sortedYears = Object.keys(StratYearData).sort(function (a, b) {
                return Number(b) - Number(a);
            });

            // Rebuilding the dataBind content with sorted data
            var newDataBind = `<div class="">
                <h4 class="section-title">Annual Reports and Annual Returns</h4>
            </div>`;

            sortedYears.forEach(function (StratYear) {
                var StratYearType = Number(StratYear);
                newDataBind += `<table class="table table-striped border-bottom">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">Financial Year (${StratYearType} - ${StratYearType + 1})</th>
                                            </tr>
                                        </thead> <tbody>`;

                StratYearData[StratYear].forEach(function (item) {
                    newDataBind += `<tr>
                                                <td>
                                                    <a href="${item.Path}" target="_blank">
                                                        <img src="img/pdf_icon.png">${item.Title}
                                                    </a>
                                                </td>
                                            </tr>`;
                });

                newDataBind += `</tbody>
                                    </table>`;
            });

            document.getElementById("tableData").innerHTML = newDataBind;
        },
        error: function (r) {
            alert(r.responseText);
        },
        failure: function (r) {
            alert(r.responseText);
        }
    });
}
