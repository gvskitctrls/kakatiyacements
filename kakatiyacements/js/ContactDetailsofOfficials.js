var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/ContactDetails.asmx/ContactDetailsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, name, designation, Address, Number, mail
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var name = e.find("name").text();
                var designation = e.find("designation").text();
                var Address = e.find("Address").text();
                var Number = e.find("Number").text();
                var mail = e.find("mail").text();
                dataBind += `<tr>

                                    <td>Name of the Official: </td>
                                    <td>${name}</td>
                                </tr>
                                <tr>
                                    <td>Designation: </td>
                                    <td>${designation}</td>
                                </tr>
                                <tr>

                                    <td>Address:</td>
                                    <td>${Address} </td>
                                </tr>
                                <tr>

                                    <td>Telephone Nos.:</td>
                                    <td>${Number}</td>
                                </tr>
                                <tr>

                                    <td>E-mail ID.:</td>
                                    <td>${mail}</td>
                                </tr>`
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