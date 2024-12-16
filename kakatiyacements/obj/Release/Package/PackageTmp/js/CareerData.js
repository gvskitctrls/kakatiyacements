var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "AddCareersDetails.asmx/careerData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, name, email, phone, subject, Path
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var name = e.find("name").text();
                var email = e.find("email").text();
                var phone = e.find("phone").text();
                var subject = e.find("subject").text();
                dataBind += `<tr><td>${idNo}</td><td>${name}</td><td>${email}</td><td>${phone}</td><td>${subject}</td></tr>`
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

