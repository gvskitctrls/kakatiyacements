var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "CareerData.asmx/Detailsofcareer",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, name, email, phone, subject, message
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var name = e.find("name").text();
                var email = e.find("email").text();
                var phone = e.find("phone").text();
                var subject = e.find("subject").text();
                var Path = e.find("Path").text();
                var dat = `
   <a href="../${Path}" target="_blank">
       <img src="CareerPdf/pdf_icon.png">
   </a>
   `;
                var PreferredLocation = e.find("PreferredLocation").text();
                dataBind += `<tr><td>${idNo}</td><td>${name}</td><td>${email}</td><td>${phone}</td><td>${subject}</td><td>${PreferredLocation}</td><td>${dat}</td></tr>`
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

