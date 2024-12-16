var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/Disclosure.asmx/DisclosureData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, Information, Applicability, link
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Information = e.find("Information").text();
                var Applicability = e.find("Applicability").text();
                var link = e.find("link").text();
                dataBind += `<tr>
                                    <td class="text-center">${idNo}</td>
                                    <td>${Information}</td>
                                    <td class="text-center">${Applicability}</td>
                                    <td class="text-center"><a class="btn btn-primary btn-xs" href="${link}" target="_blank">View</a></td>
                                </tr>`
            })), document.getElementById("tableData").innerHTML = dataBind
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