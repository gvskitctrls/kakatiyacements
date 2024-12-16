var tableDataArray = [];
var dataBind = `<div class="">
                                        <h4 class="section-title">CSR Reports</h4>
                                    </div>
`;
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/AddCsrReports.asmx/CsrReportsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, StratYear, EndYear, Title, Path
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var StratYear = e.find("StratYear").text();
                var EndYear = e.find("EndYear").text();
                var Title = e.find("Title").text();
                var Path = e.find("Path").text();

                dataBind += `  <table class="table table-striped border-bottom">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">CSR Reports ${StratYear}-${EndYear}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <a href="${Path}" target="_blank">
                                                        <img src="img/pdf_icon.png"> ${Title}
                                                    </a>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>`
            })), document.getElementById("mailData").innerHTML = dataBind
        },
        error: function (e) {
            alert(e.responseText)
        },
        failure: function (e) {
            alert(e.responseText)
        }
    })
}
dataLoad();