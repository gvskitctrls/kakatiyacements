
let StratYearData = {};
//Designation, Name, Role, ParentId, id
function saveDesignationData(StratYear, EndYear, Quaterly, Path) {
    if (StratYear in StratYearData) {

        StratYearData[StratYear].push({ EndYear, Quaterly, Path });
    } else {

        StratYearData[StratYear] = [{ EndYear, Quaterly, Path }];
    }
}

function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/RelatedPartyTransactions.asmx/RelatedPartyTransactionsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var StratYear = rowData.find('StratYear').text();
                var EndYear = rowData.find('EndYear').text();
                var Quaterly = rowData.find('Quaterly').text();
                var Path = rowData.find('Path').text();
                saveDesignationData(StratYear, EndYear, Quaterly, Path);
            });

            // Sort years in descending order
            var sortedYears = Object.keys(StratYearData).map(Number).sort((a, b) => b - a);

            // Construct HTML for the table
            var dataBind = "";
            sortedYears.forEach(StratYearType => {
                var nextYear = StratYearType + 1;
                dataBind += `<tr>
                                <th scope="row" style="text-align: left;">${StratYearType}-${nextYear}</th>`;

                // Array of quarters to loop through
                const quarters = ['Q1', 'Q2'];

                // Loop through quarters to create cells
                quarters.forEach(quarter => {
                    let item = StratYearData[StratYearType].find(d => d.Quaterly === quarter);
                    if (item) {
                        dataBind += `<td>
                                        <a href="${item.Path}" target="_blank">
                                            <img src="img/pdf_icon.png">
                                        </a>
                                    </td>`;
                    } else {
                        dataBind += `<td></td>`;
                    }
                });

                dataBind += `</tr>`;
            });

            $("#tableData").html(dataBind);
        },
        error: function (r) {
            alert("Error fetching data: " + r.responseText);
        }
    });
}

dataLoad();