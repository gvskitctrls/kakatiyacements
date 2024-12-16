let StratYearData = {};

// Function to save data into StratYearData
function saveDesignationData(StratYear, EndYear, Title, Path) {
    if (StratYear in StratYearData) {
        StratYearData[StratYear].push({ EndYear, Title, Path });
    } else {
        StratYearData[StratYear] = [{ EndYear, Title, Path }];
    }
}

// Initial HTML for data binding
var dataBind = `<div class="">
    <h4 class="section-title">Paper Advertisements</h4>
</div>`;

// Function to load data using AJAX
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/PaperAdvertisements.asmx/PaperAdvertisementsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var StratYear = rowData.find('StratYear').text();
                var EndYear = rowData.find('EndYear').text();
                var Title = rowData.find('Title').text();
                var Path = rowData.find('Path').text();
                saveDesignationData(StratYear, EndYear, Title, Path);
            });

            // Sort StratYearData based on StartYear (StratYear) in descending order
            var sortedYears = Object.keys(StratYearData).sort((a, b) => parseInt(b) - parseInt(a));

            // Generate HTML for each sorted year range
            sortedYears.forEach(StratYearType => {
                var nextYear = Number(StratYearType) + 1;
                dataBind += `<table class="table table-striped border-bottom">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">${StratYearType}-${nextYear} Paper Advertisements.</th>
                        </tr>
                    </thead>
                    <tbody>`;

                // Generate rows for each item in the current StratYear range
                StratYearData[StratYearType].forEach(item => {
                    dataBind += `<tr>
                        <td>
                            <a href="${item.Path}" target="_blank">
                                <img src="img/pdf_icon.png"> ${item.Title}
                            </a>
                        </td>
                    </tr>`;
                });

                dataBind += `</tbody></table>`;
            });

            // Update the tableData element with the generated HTML
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

// Call the dataLoad function to initiate data loading and HTML generation
dataLoad();
