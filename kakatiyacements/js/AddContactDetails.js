function addDataToTable() {
    // id, name, designation, Address, Number, mail
    var name = document.getElementById("name").value;
    var designation = document.getElementById("designation").value;
    var Address = document.getElementById("Address").value;
    var Number = document.getElementById("Number").value;
    var mail = document.getElementById("mail").value;
    if (name != "" && designation != "" && Address != "" && Number != "" && mail != "") {
        var n = new XMLHttpRequest();
        n.open("POST", "ContactDetails.asmx/ContactDetailsDataInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            name: name,
            designation: designation,
            Address: Address,
            Number: Number,
            mail: mail
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
        url: "ContactDetails.asmx/ContactDetailsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            //id, name, designation, Address, Number, mail
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
                dataBind += `<tr><td>${idNo}</td><td>${name}</td><td>${designation}</td><td>${Address}</td><td>${Number}</td><td>${mail}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
//id, name, designation, Address, Number, mail
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var name = t.find("name").text();
            var designation = t.find("designation").text();
            var Address = t.find("Address").text();
            var Number = t.find("Number").text();
            var mail = t.find("mail").text();
            $("#nameModel").attr("value", name);
            $("#designationModel").attr("value", designation);
            $("#AddressModel").attr("value", Address);
            $("#NumberModel").attr("value", Number);
            $("#mailModel").attr("value", mail);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    //id, name, designation, Address, Number, mail
    var name = document.getElementById("nameModel").value;
    var designation = document.getElementById('designationModel').value;
    var Address = document.getElementById("AddressModel").value;
    var NumberData = document.getElementById('NumberModel').value;
    var mail = document.getElementById("mailModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "ContactDetails.asmx/updateContactDetailsData", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        name: name,
        designation: designation,
        Address: Address,
        Number: NumberData,
        mail: mail
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
    d.open("POST", "ContactDetails.asmx/deleteContactDetailsData", true);
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