var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/CommunicationswithShareholders.asmx/CommunicationswithShareholdersData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            //id, Title, Path
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Title = e.find("Title").text();
                var Path = e.find("Path").text();
                dataBind += `  <tr>
                                                <td>
                                                    <a href="${Path}" target="_blank">
                                                        <img src="img/pdf_icon.png"> ${Title}
                                                    </a>
                                                </td>
                                            </tr>

`
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