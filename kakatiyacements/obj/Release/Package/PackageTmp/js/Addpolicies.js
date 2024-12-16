var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "policies.asmx/policiesData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, Title, Path
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Title = e.find("Title").text();
                dataBind += `<tr><td>${idNo}</td><td>${Title}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
//id, Title, Path
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Title = t.find("Title").text();
            $("#TitleModel").attr("value", Title);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    //id, Title, Path
    var Title = document.getElementById("TitleModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "policies.asmx/updatepoliciesData", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
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
    d.open("POST", "policies.asmx/deletepoliciesData", true);
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