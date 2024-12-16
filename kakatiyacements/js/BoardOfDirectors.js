
let DesignationData = {};
//Designation, Name, Role, ParentId, id
function saveDesignationData(Designation, Name, Role) {
    if (Designation in DesignationData) {

        DesignationData[Designation].push({ Name, Role });
    } else {

        DesignationData[Designation] = [{ Name, Role }];
    }
}


var dataBind = "";
//Designation, Name, Role, ParentId, id
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/BoardOfDirectorsData.asmx/BoardMembersData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var Designation = rowData.find('Designation').text();
                var Name = rowData.find('Name').text();
                var Role = rowData.find('Role').text();
                saveDesignationData(Designation, Name, Role);

            });
            for (let Designation in DesignationData) {
                var DesignationType = Designation;
                dataBind += `<h4 class="item-title"><b>${DesignationType}</b></h4><div class="row">`;
                DesignationData[Designation].forEach(item => {
                    dataBind += ` <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="team-box1 team-box3">
                                    <div class="item-shape"></div>
                          
                                    <div class="item-content">
                                        <h3 class="item-title"><a href="">${item.Name}</a></h3>
                                        <h4 class="item-subtitle">${item.Role}</h4>
                                    </div>
                                </div>
                            </div>`;
                });
                dataBind += `</div>`;
            }
           

            document.getElementById("tableData").innerHTML = dataBind;
        },
        error: function (r) {
            alert(r.responseText);
        },
        failure: function (r) {
            alert(r.responseText);
        }
    });
}
dataLoad();