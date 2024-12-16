function addDataToTable() {
    // id, Information, Applicability, link
    var Information = document.getElementById("Information").value;
    var Applicability = document.getElementById("Applicability").value;
    var WebsiteLink = document.getElementById("WebsiteLink").value;
    if (Information != "" && Applicability != "" && WebsiteLink != "" ) {
        var n = new XMLHttpRequest();
        n.open("POST", "Disclosure.asmx/DisclosureDataInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            Information: Information,
            Applicability: Applicability,
            link: WebsiteLink
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
        url: "Disclosure.asmx/DisclosureData",
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
                dataBind += `<tr><td>${idNo}</td><td>${Information}</td><td>${Applicability}</td><td>${link}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
//id, Information, Applicability, link
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Information = t.find("Information").text();
            var Applicability = t.find("Applicability").text();
            var link = t.find("link").text();
            $("#InformationModel").attr("value", Information);
            document.getElementById('ApplicabilityModel').value = Applicability;
            //$("#ApplicabilityModel").attr("value", Applicability);
            $("#WebsiteLinkModel").attr("value", link);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    //id, Information, Applicability, link
    var Information = document.getElementById("InformationModel").value;
    var Applicability = document.getElementById('ApplicabilityModel').value;
    var link = document.getElementById("WebsiteLinkModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "Disclosure.asmx/updateDisclosureData", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        Information: Information,
        Applicability: Applicability,
        link: link
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
    d.open("POST", "Disclosure.asmx/deleteDisclosureData", true);
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