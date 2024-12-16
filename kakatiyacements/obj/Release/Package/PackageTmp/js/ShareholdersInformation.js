var tableDataArray = [];
var dataBind = "";
var idNo = 0;
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/AddShareholdersInformation.asmx/ShareholdersInformationData",
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
                dataBind += `<div class="col-lg-6 col-md-6">
       <div class="about-box4 ">
           <div class="about-layout">
               <div class="media" style="align-items: center;">
                   <div class="item-img about-img2">
                       <img src="img/figure65.png" alt="figure" width="44" height="46">
                   </div>
                   <div class="media-body">
                       <div class="item-content">
                           <h3 class="item-title heading-title"><a href="${Link}">${Title}</a> </h3>
                       </div>
                   </div>
               </div>
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