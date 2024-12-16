var tableArray = [];
var dataSelectBind = "<option value=''>--Select Committee--</option>";
//data retriving for dropdown
function dataLoadSelect() {
    $.ajax({
        type: "POST",
        url: "Committees.asmx/CommitteesData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            $(e).find("NewDataSet").find("Table").each((function () {
                //id, Committee

                var e = $(this);
                tableArray.push(e);
                var Committee = e.find("Committee").text();
                var id = e.find("id").text();
                dataSelectBind += "<option value='" + Committee + "'>" + Committee + "</option>";
            })), document.getElementById("Committee").innerHTML = dataSelectBind
        },
        error: function (e) {
            alert(e.responseText)
        },
        failure: function (e) {
            alert(e.responseText)
        }
    })
}
dataLoadSelect();
$('#Committee').change(function () {
    var data = $(this).val();
    tableArray.forEach(function (t) {
        var Committee = t.find("Committee").text();
        if (data == Committee) {
            document.getElementById('parentId').setAttribute("value", t.find("id").text());

        }
    });
});

function addDataToTable() {
    // Name, Designation, Committee, ParentId, id
    var Committee = document.getElementById("Committee").value;
    var Name = document.getElementById("Name").value;
    var Designation = document.getElementById("Designation").value;
    var ParentId = document.getElementById("parentId").value;
    if (Committee != "" && Name != "" && Designation != "" && ParentId != "") {
        var n = new XMLHttpRequest();
        n.open("POST", "CompositionofBoardCommittees.asmx/BoardCommitteesDataInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            Name: Name,
            Designation: Designation,
            Committee: Committee,
            ParentId: ParentId
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
// Name, Designation, Committee, ParentId, id
var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "CompositionofBoardCommittees.asmx/BoardCommitteesData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            // Name, Designation, Committee, ParentId, id
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Name = e.find("Name").text();
                var Designation = e.find("Designation").text();
                var Committee = e.find("Committee").text();
                dataBind += `<tr><td>${idNo}</td><td>${Name}</td><td>${Designation}</td><td>${Committee}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
// Name, Designation, Committee, ParentId, id
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Committee = t.find("Committee").text();
            var Name = t.find("Name").text();
            var Designation = t.find("Designation").text();
            $("#CommitteeModel").attr("value", Committee);
            $("#NameModel").attr("value", Name);
            $("#DesignationModel").attr("value", Designation);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    // Name, Designation, Committee, ParentId, id
    var Committee = document.getElementById("CommitteeModel").value;
    var Name = document.getElementById('NameModel').value;
    var Designation = document.getElementById("DesignationModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "CompositionofBoardCommittees.asmx/updateBoardCommitteesData", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        Committee: Committee,
        Name: Name,
        Designation: Designation
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
    d.open("POST", "CompositionofBoardCommittees.asmx/deleteBoardCommitteesData", true);
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