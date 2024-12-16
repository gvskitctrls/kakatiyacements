let StratYearData = {};

// Function to save data into StratYearData
function saveDesignationData(StratYear, Title, Path) {
    if (StratYear in StratYearData) {
        StratYearData[StratYear].push({ Title, Path });
    } else {
        StratYearData[StratYear] = [{ Title, Path }];
    }
}

// Initial HTML for data binding
var dataBind = ` <div class="">
     <h4 class="section-title">Book Closure</h4>
 </div>`;

// Function to load data using AJAX
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/BookClosure.asmx/BookClosureData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var StratYear = rowData.find('StratYear').text();
                var Title = rowData.find('Title').text();
                var Path = rowData.find('Path').text();
                saveDesignationData(StratYear, Title, Path);
            });

            // Sort StratYearData based on StartYear (StratYear) in descending order
            var sortedYears = Object.keys(StratYearData).sort((a, b) => parseInt(b) - parseInt(a));

            // Generate HTML for each sorted year range
            sortedYears.forEach(StratYearType => {
                dataBind += ` <table class="table table-striped border-bottom">
     <thead class="thead-dark">
         <tr>
             <th scope="col">
Financial Year ${StratYearType}</th>
         </tr>
     </thead>
     <tbody>`;

                // Generate rows for each item in the current StratYear range
                StratYearData[StratYearType].forEach(item => {
                    dataBind += ` <tr>
             <td>
                 <a href="${item.Path}" target="_blank">
                     <img src="img/pdf_icon.png"> ${item.Title}
                 </a>
             </td>
         </tr>
`;
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
