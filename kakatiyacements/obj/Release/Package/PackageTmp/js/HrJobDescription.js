function addDataToTable() {
    //id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
    var JobDescription = document.getElementById("JobDescription").value;
    var PointsWise = document.getElementsByClassName("ql-editor")[0].innerHTML;
    var OpenPositions = document.getElementById("OpenPositions").value;
    var EducationalQualification = document.getElementById("EducationalQualification").value;
    var PreferableQualification = document.getElementById("PreferableQualification").value;
    var SkillsRequired = document.getElementById("SkillsRequired").value;
    var WorkExperience = document.getElementById("WorkExperience").value;
    var Location = document.getElementById("Location").value;
    var Postedon = document.getElementById("Postedon").value;
    var Title = document.getElementById("Title").value;
    let cleanedString = PointsWise.replace(/<\/?ul>/g, '');
    if (JobDescription != "" && PointsWise != "" && OpenPositions != "" && EducationalQualification != "" && PreferableQualification != "" && SkillsRequired != "" && WorkExperience != "" && Location != "" && Postedon != "" && Title != "") {
        var n = new XMLHttpRequest();
        n.open("POST", "JobDescription.asmx/CareerDataInsert", true);
        n.setRequestHeader("Content-Type", "application/json");
        var o = {
            JobDescription: JobDescription,
            PointsWise: cleanedString,
            OpenPositions: OpenPositions,
            EducationalQualification: EducationalQualification,
            PreferableQualification: PreferableQualification,
            SkillsRequired: SkillsRequired,
            WorkExperience: WorkExperience,
            Location: Location,
            Postedon: Postedon,
            Title: Title
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
        url: "JobDescription.asmx/DetailsofCareerData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            //Title,JobDescription,OpenPositions
            //id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
            $(e).find("NewDataSet").find("Table").each((function () {
                idNo += 1;
                var e = $(this);
                tableDataArray.push(e);
                var id = e.find("id").text();
                var Title = e.find("Title").text();
                var OpenPositions = e.find("OpenPositions").text();
                var WorkExperience = e.find("WorkExperience").text();
               
                dataBind += `<tr><td>${idNo}</td><td>${Title}</td><td>${WorkExperience}</td><td>${OpenPositions}</td><td><button type="button" class="btn btn-success my-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" value="${id}">Edit</button></td><td><button type="button" class="btn btn-danger my-btn-delete" data-bs-toggle="modal" data-bs-target="#exampleModaldelete" value="${id}">Delete</button></td></tr>`
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
//id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
$(document).on("click", ".my-btn", function () {
    var e = $(this).val();
    tableDataArray.forEach(function (t) {
        var o = t.find("id").text();
        if (e == o) {
            var JobDescriptionmodel = t.find("JobDescription").text();
            var PointsWise = t.find("PointsWise").text();
            var htmlString = '<ul>' + PointsWise + '</ul>';
            var OpenPositionsmodel = t.find("OpenPositions").text();
            var EducationalQualificationmodel = t.find("EducationalQualification").text();
            var PreferableQualificationmodel = t.find("PreferableQualification").text();
            var SkillsRequiredmodel = t.find("SkillsRequired").text();
            var WorkExperiencemodel = t.find("WorkExperience").text();
            var Locationmodel = t.find("Location").text();
            var Postedonmodel = t.find("Postedon").text();
            var Titlemodel = t.find("Title").text();
            $("#JobDescriptionmodel").attr("value", JobDescriptionmodel);
            $("#OpenPositionsmodel").attr("value", OpenPositionsmodel);
            $("#EducationalQualificationmodel").attr("value", EducationalQualificationmodel);
            $("#PreferableQualificationmodel").attr("value", PreferableQualificationmodel);
            $("#WorkExperiencemodel").attr("value", WorkExperiencemodel);
            $("#Locationmodel").attr("value", Locationmodel);
            $("#Postedonmodel").attr("value", Postedonmodel);
            $("#Titlemodel").attr("value", Titlemodel);
            document.getElementById('SkillsRequiredmodel').innerText = SkillsRequiredmodel;
            document.getElementsByClassName("ql-editor")[1].innerHTML = htmlString;
            $("#saveData").attr("value", o);
            $("#saveData").attr("onclick", "updateData()");
        }
    });
});

function updateData() {
    //id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
    var JobDescription = document.getElementById("JobDescriptionmodel").value;
    var PointsWise = document.getElementsByClassName("ql-editor")[1].innerHTML;
    var OpenPositions = document.getElementById("OpenPositionsmodel").value;
    var EducationalQualification = document.getElementById("EducationalQualificationmodel").value;
    var PreferableQualification = document.getElementById("PreferableQualificationmodel").value;
    var SkillsRequired = document.getElementById("SkillsRequiredmodel").value;
    var WorkExperience = document.getElementById("WorkExperiencemodel").value;
    var Location = document.getElementById("Locationmodel").value;
    var Postedon = document.getElementById("Postedonmodel").value;
    var Title = document.getElementById("Titlemodel").value;
    let cleanedString = PointsWise.replace(/<\/?ul>/g, '');
    var n = document.getElementById("saveData").value;
    var id = Number(n)
    var d = new XMLHttpRequest;
    d.open("POST", "JobDescription.asmx/updateCareerData", !0);
    d.setRequestHeader("Content-Type", "application/json");
    var l = {
        id: id,
        JobDescription: JobDescription,
        PointsWise: cleanedString,
        OpenPositions: OpenPositions,
        EducationalQualification: EducationalQualification,
        PreferableQualification: PreferableQualification,
        SkillsRequired: SkillsRequired,
        WorkExperience: WorkExperience,
        Location: Location,
        Postedon: Postedon,
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
    d.open("POST", "JobDescription.asmx/deleteCareerData", true);
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