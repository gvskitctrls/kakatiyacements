function addDataToTable() {
    // id, Title, Link
    var Title = document.getElementById("Title").value;
    var Link = document.getElementById("Link").value;
    if (Title != "" && Link != "" ) {
        var n = new XMLHttpRequest();
        n.open("POST", "AddShareholdersInformation.asmx/ShareholdersInformationDataInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            Title: Title,
            Link: Link
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
//id, Title, Link
var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "AddShareholdersInformation.asmx/ShareholdersInformationData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            //id, Title, Link
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Title = e.find("Title").text();
                var Link = e.find("Link").text();
                dataBind += `<tr><td>${idNo}</td><td>${Title}</td><td>${Link}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
//id, Title, Link
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Title = t.find("Title").text();
            var Link = t.find("Link").text();
            $("#TitleModel").attr("value", Title);
            $("#LinkModel").attr("value", Link);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    //id, Title, Link
    var Title = document.getElementById("TitleModel").value;
    var Link = document.getElementById('LinkModel').value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "AddShareholdersInformation.asmx/updateShareholdersInformation", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        Link: Link,
        Title: Title
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
    d.open("POST", "AddShareholdersInformation.asmx/deleteShareholdersInformationData", true);
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