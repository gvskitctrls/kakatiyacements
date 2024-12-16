
let OfficeData = {};
function saveDesignationData(Office, locationcontact, Data) {
    if (Office in OfficeData) {

        OfficeData[Office].push({ locationcontact, Data });
    } else {

        OfficeData[Office] = [{ locationcontact, Data }];
    }
}

var dataBind = "";

function dataLoad() {
  
    $.ajax({
        type: "POST",
        url: "Admin/AddContactInfo.asmx/ContactData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            //id, Office, locationcontact, Data
            tableData.each(function () {
                var rowData = $(this);
                var Office = rowData.find('Office').text();
                var locationcontact = rowData.find('locationcontact').text();
                var Data = rowData.find('Data').text();
               
                saveDesignationData(Office, locationcontact, Data);
            });
     


            for (let Office in OfficeData) {
               
                var OfficeType = Office;
                var nameAddress = "Location";
                var address = "";
                var number = "";
                OfficeData[OfficeType].forEach(item => {
                    if (item.locationcontact == nameAddress) { address = item.Data }
                    else { number = item.Data }
                    
                });
                if (OfficeType == "Regd Office") {
                    dataBind += `

                    <div class="col-lg-6">
    <h4 class="item-title" style="margin: 0 0 30px 0;"><b>${OfficeType}</b></h4>
    <div class="topbar-right2">
        <ul style="display: inline;">
            <li style="padding-bottom: 20px;">
                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                    <div class="">
                        <div class="item-icon"><i class="fas fa-map"></i></div>
                    </div>
                    <div class="media-body" style="margin-left: 12px; ">
                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                           ${address}
                        </div>
                    </div>
                </div>
            </li>
            <li style="padding-bottom: 20px;">
                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                    <div class="">
                        <div class="item-icon"><i class="fas fa-phone"></i></div>
                    </div>
                    <div class="media-body" style="margin-left: 12px; ">
                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                           ${number}
                        </div>
                    </div>
                </div>
            </li>


        </ul>
    </div>
</div>

<div class="col-lg-6">
    <h4 class="item-title" style="margin: 0 0 30px 0;"><b>Mail for information</b></h4>

    <div class="topbar-right2">
        <ul style="display: inline;">

            <li style="padding-bottom: 20px;">`;
                    for (let Title in MailData) {
                        MailData[Title].forEach(item => {
                        dataBind +=
                            `
                 <div class="media" style="align-items: normal; -webkit-align-items: normal;">

                    <div class="item-icon">
                        <i class="far fa-envelope" style="font-size: 20px;"></i>
                    </div>
                    <div class="media-body" style="margin-left: 12px; ">
                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                            <p>${item.Mail}</p>
                        </div>
                    </div>

                </div>`;
                        });
                    }
                    dataBind += `  </li>
        </ul>
    </div>
</div>`;
                }
                else {
                    dataBind += `
                    <div class="col-lg-6">
    <h4 class="item-title" style="margin: 0 0 30px 0;"><b>Cement Works</b></h4>

    <div class="topbar-right2">
        <ul style="display: inline;">
            <li style="padding-bottom: 20px;">
                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                    <div class="">
                        <div class="item-icon"><i class="fas fa-map"></i></div>
                    </div>
                    <div class="media-body" style="margin-left: 12px; ">
                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                           ${address}
                        </div>
                    </div>
                </div>
            </li>
            <li style="padding-bottom: 20px;">
                <div class="media" style="align-items: normal; -webkit-align-items: normal;">
                    <div class="">
                        <div class="item-icon"><i class="fas fa-phone"></i></div>
                    </div>
                    <div class="media-body" style="margin-left: 12px; ">
                        <div class="item-number" style="font-size: 14px; font-weight: 500;">
                            ${number}
                        </div>
                    </div>
                </div>
            </li>

        </ul>
    </div>
</div>
                    `;
                }
                
            }


            document.getElementById("tableData").innerHTML = dataBind;

        },
        error: function (r) {
            alert("Error fetching data: " + r.responseText);
        }
    });
}

    MailLoad();
   


let MailData = {};
function saveMailData(Title, Mail) {
    if (Title in MailData) {

        MailData[Title].push({ Mail });
    } else {

        MailData[Title] = [{ Mail }];
    }
}
function MailLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/MailData.asmx/MailInfoData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            //id, Title, Mail
            tableData.each(function () {
                var rowData = $(this);
                var Title = rowData.find('Title').text();
                var Mail = rowData.find('Mail').text();
               

                saveMailData(Title, Mail);
            });
            dataLoad();
        },
        error: function (r) {
            alert("Error fetching data: " + r.responseText);
        }
    });
}

