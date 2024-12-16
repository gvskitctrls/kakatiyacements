
function addDataToTable() {
    // id, Office, locationcontact, Data
    var Office = document.getElementById("Office").value;
    var locationcontact = document.getElementById("locatphone").value;
    var Data = document.getElementById("Data").value;
    
    if (Office != "" && locationcontact != "" && Data != "") {
        var n = new XMLHttpRequest();
        n.open("POST", "AddContactInfo.asmx/ContactInfoInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            Office: Office,
            locationcontact: locationcontact,
            Data: Data
        };
        var d = JSON.stringify(o);
        n.onload = function () {

            if (n.status >= 200 && n.status < 300) {

                alert("Successfully inserted");
                location.reload();
            } else {
                console.error("Request failed with status:", n.status);
            }
        };
        n.onerror = function () {
            console.error("Request failed");
        };
        n.send(d);
    } else {

        alert("Enter all fields");
    }
}

var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "AddContactInfo.asmx/ContactInfoData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, Office, locationcontact, Data
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Office = e.find("Office").text();
                var locationcontact = e.find("locationcontact").text();
                var Data = e.find("Data").text();
                dataBind += `<tr><td>${idNo}</td><td>${Office}</td><td>${locationcontact}</td><td>${Data}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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

$(document).on("click", ".my-btn-delete", (function () {
    var e = $(this).val();
    document.getElementById("deleteData").setAttribute("onclick", "deleteRecord()");
    document.getElementById("deleteData").setAttribute("value", e);
}));
// id, Office, locationcontact, Data
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Office = t.find("Office").text();
            var locationcontact = t.find("locationcontact").text();
            var Data = t.find("Data").text();
            $("#OfficeModel").attr("value", Office);
            $("#locatphoneModel").attr("value", locationcontact);
            $("#DataModel").attr("value", Data);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    // id, Office, locationcontact, Data
    var Office = document.getElementById("OfficeModel").value;
    var locationcontact = document.getElementById('locatphoneModel').value;
    var Data = document.getElementById("DataModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "AddContactInfo.asmx/updateContactInfo", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        Office: Office,
        locationcontact: locationcontact,
        Data: Data
    };
    var data = JSON.stringify(l);
    d.onload = function () {

        if (d.status >= 200 && d.status < 300) {

            alert("Successfully updated");
            location.reload();
        } else {
            console.error("Request failed with status:", d.status);
        }
    };
    d.onerror = function () {
        console.error("Request failed");
    };
    d.send(data);
}

function deleteRecord() {
    var e = document.getElementById("deleteData").value;
    var t = Number(e);
    var d = new XMLHttpRequest;
    d.open("POST", "AddContactInfo.asmx/deleteContactInfo", true);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: t
    };
    var data = JSON.stringify(l);
    d.onload = function () {

        if (d.status >= 200 && d.status < 300) {

            alert("Successfully deleted");
            location.reload();
        } else {
            console.error("Request failed with status:", d.status);
        }
    };
    d.onerror = function () {
        console.error("Request failed");
    };
    d.send(data);
}