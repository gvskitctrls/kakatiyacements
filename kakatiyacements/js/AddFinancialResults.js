var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "FinancialResults.asmx/FinancialResultsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // id, StratYear, EndYear, Quaterly, Path
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Quaterly = e.find("Quaterly").text();
                var StratYear = e.find("StratYear").text();
                var EndYear = e.find("EndYear").text();
                dataBind += `<tr><td>${idNo}</td><td>${Quaterly}</td><td>${StratYear}</td><td>${EndYear}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
// id, StratYear, EndYear, Quaterly, Path
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Quaterly = t.find("Quaterly").text();
            var StratYear = t.find("StratYear").text();
            var EndYear = t.find("EndYear").text();
            document.getElementById('QuaterlyModel').value = Quaterly;
            $("#StratYearModel").attr("value", StratYear);
            $("#EndYearModel").attr("value", EndYear);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");

        }
    });
});

function updateData() {
    // id, StratYear, EndYear, Quaterly, Path
    var Quaterly = document.getElementById("QuaterlyModel").value;
    var StratYear = document.getElementById("StratYearModel").value;
    var EndYear = document.getElementById("EndYearModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "FinancialResults.asmx/updateFinancialResultsData", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        StratYear: StratYear,
        EndYear: EndYear,
        Quaterly: Quaterly
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
    d.open("POST", "FinancialResults.asmx/deleteFinancialResultsData", true);
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