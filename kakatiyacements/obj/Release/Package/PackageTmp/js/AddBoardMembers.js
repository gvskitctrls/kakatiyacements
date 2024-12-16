var tableArray = [];
var dataSelectBind = "<option value=''>--Select Designation--</option>";
//data retriving for dropdown
function dataLoadSelect() {
    $.ajax({
        type: "POST",
        url: "Designations.asmx/DesignationsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            $(e).find("NewDataSet").find("Table").each((function () {
                //id, Designations

                var e = $(this);
                tableArray.push(e);
                var Designations = e.find("Designations").text();
                var id = e.find("id").text();
                dataSelectBind += "<option value='" + Designations + "'>" + Designations + "</option>";
            })), document.getElementById("Designation").innerHTML = dataSelectBind
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
$('#Designation').change(function () {
    var data = $(this).val();
    tableArray.forEach(function (t) {
        var Designations = t.find("Designations").text();
        if (data == Designations) {
            document.getElementById('parentId').setAttribute("value", t.find("id").text());

        }
    });
});

function addDataToTable() {
    // Designation, Name, Role, ParentId, id
    var Designation = document.getElementById("Designation").value;
    var Name = document.getElementById("Name").value;
    var Role = document.getElementById("Role").value;
    var ParentId = document.getElementById("parentId").value;
    if (Designation != "" && Name != "" && Role != "" && ParentId != "") {
        var n = new XMLHttpRequest();
        n.open("POST", "BoardOfDirectorsData.asmx/BoardMembersDataInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            Designation: Designation,
            Name: Name,
            Role: Role,
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
//Designation, Name, Role, ParentId, id
var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "BoardOfDirectorsData.asmx/BoardMembersData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            //Designation, Name, Role, ParentId, id
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Designation = e.find("Designation").text();
                var Name = e.find("Name").text();
                var Role = e.find("Role").text();
                dataBind += `<tr><td>${idNo}</td><td>${Designation}</td><td>${Name}</td><td>${Role}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
//Designation, Name, Role, ParentId, id
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var Designation = t.find("Designation").text();
            var Name = t.find("Name").text();
            var Role = t.find("Role").text();
            $("#DesignationModel").attr("value", Designation);
            $("#NameModel").attr("value", Name);
            $("#RoleModel").attr("value", Role);
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    //Designation, Name, Role, ParentId, id
    var Designation = document.getElementById("DesignationModel").value;
    var Name = document.getElementById('NameModel').value;
    var Role = document.getElementById("RoleModel").value;
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "BoardOfDirectorsData.asmx/updateBoardMembers", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        Designation: Designation,
        Name: Name,
        Role: Role
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
    d.open("POST", "BoardOfDirectorsData.asmx/deleteBoardMembersData", true);
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