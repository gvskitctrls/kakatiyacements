
function loadEventTimings() {
    var idValue = document.getElementById('dataId').value;
    var dataBind = "";
    $.ajax({
        type: "POST",
        url: "HrData/JobDescription.asmx/DetailsofCareerData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            $(e).find("NewDataSet").find("Table").each((function () {
                //id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
                var e = $(this);
                var id = e.find("id").text();
                if (id == idValue) {
                    var JobDescription = e.find("JobDescription").text();
                    var Title = e.find("Title").text();
                    var PointsWise = e.find("PointsWise").text();
                    var EducationalQualification = e.find("EducationalQualification").text();
                    var OpenPositions = e.find("OpenPositions").text();
                    var PreferableQualification = e.find("PreferableQualification").text();
                    var SkillsRequired = e.find("SkillsRequired").text();
                    var WorkExperience = e.find("WorkExperience").text();
                    var Location = e.find("Location").text();
                    var Postedon = e.find("Postedon").text();
                    dataBind += `
                    <h4 class="item-title">
    <div class="shareArticle">
        <div class="shareSocial">
            <b>Job Description : ${Title} </b>&nbsp;&nbsp;
            <i class="fa fa-share-alt"></i>&nbsp; <span style="font-size:14px">Share Job :</span>
            <ul class="socialList">
                <li><a href="https://www.facebook.com/sharer/sharer.php?u=https://localhost:44398/careers.aspx?id=${id}" target="_blank"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li><a href="https://twitter.com/intent/tweet?url=https://localhost:44398/careers.aspx?id=${id}&text=Check%20out%20this%20link" target="_blank"><i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="mailto:?subject=Check%20out%20this%20link&body=Here's%20the%20link%3A%20https://localhost:44398/careers.aspx?id=${id}" target="_blank"><i class="fa-solid fa-envelope"></i></a></li>
                <li><a href="https://api.whatsapp.com/send?text=Check%20out%20this%20link%3A%20https://localhost:44398/careers.aspx?id=${id}" target="_blank"><i class="fa-brands fa-whatsapp"></i></a></li>
                <li><a href="https://t.me/share/url?url=https://localhost:44398/careers.aspx?id=${id}&text=Check%20out%20this%20link" target="_blank"><i class="fa-brands fa-telegram"></i></a></li>
                <li><a href="https://www.linkedin.com/shareArticle?url=https://localhost:44398/careers.aspx?id=${id}" target="_blank" style="background-color: royalblue;"><i class="fa-brands fa-linkedin"></i></a></li>
            </ul>
        </div>
    </div>
</h4>
<p>${JobDescription}</p>
<ul class="list-style-one" style="text-align: left;">
   ${PointsWise}
</ul>

<p><b>Open Positions :</b>${OpenPositions}</p>
<p><b>Educational Qualification :</b> ${EducationalQualification}</p>
<p><b>Preferable Qualification : </b> ${PreferableQualification}</p>
<p><b>Skills Required : </b>${SkillsRequired}</p>
<p><b>Work Experience : </b>${WorkExperience}</p>
<p><b>Location : </b>${Location}</p>
<p><b>Posted on : </b>${Postedon}</p>
                
                `
                }
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
loadEventTimings();