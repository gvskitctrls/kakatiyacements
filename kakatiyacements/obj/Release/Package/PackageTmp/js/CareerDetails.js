//id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
var dataBind = "";
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "HrData/JobDescription.asmx/DetailsofCareerData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (e) {
            $(e).find("NewDataSet").find("Table").each((function () {
              
                var e = $(this);
                var id = e.find("id").text();
                var Title = e.find("Title").text();
                var JobDescription = e.find("JobDescription").text();
                var EducationalQualification = e.find("EducationalQualification").text();
                var OpenPositions = e.find("OpenPositions").text();
                dataBind += `
                 <div class="col-lg-6 col-md-6">
     <div class="pricing-table-box">
         <div class="background-imagae">
             <img src="img/figure/figure93.png" alt="figure">
         </div>
         <h3 class="heading-title">${Title}</h3>
         <p style="display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden; margin-bottom: 15px; ">${JobDescription}</p>
         <p style="margin-bottom: 15px;"><b>Open Positions :</b>${OpenPositions}</p>
         <p style="margin-bottom: 15px;"><b>Educational Qualification :</b> ${EducationalQualification}</p>
         <div class="pricing-button">
             <a href="careers.aspx?id='${id}'" class="pricing-btn">View More</a>
         </div>
     </div>
 </div>
                `
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