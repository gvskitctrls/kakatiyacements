
let ParticularsData = {};
//Designation, Name, Role, ParentId, id
function saveDesignationData(Particulars, Path, Title) {
    if (Particulars in ParticularsData) {

        ParticularsData[Particulars].push({ Path, Title });
    } else {

        ParticularsData[Particulars] = [{ Path, Title }];
    }
}


var dataBind = "";
//id, Particulars, Path, Title
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/KycComplianceDocuments.asmx/KycComplianceDocumentsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var Particulars = rowData.find('Particulars').text();
                var Path = rowData.find('Path').text();
                var Title = rowData.find('Title').text();
                saveDesignationData(Particulars, Path, Title);

            });
            for (let Particulars in ParticularsData) {
                dataBind += `<tr>
    <td>Registering/Updating PAN</td>
    <td>
  `;
                ParticularsData[Particulars].forEach(item => {
                    dataBind += ` <a href="${item.Path}" target="_blank">
            <img src="img/pdf_icon.png"> ${item.Title}
        </a> `;
                });
                dataBind += `    </td>
</tr> `;
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