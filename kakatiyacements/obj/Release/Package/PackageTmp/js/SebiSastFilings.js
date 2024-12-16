let StratYearData = {};

// Function to save data into StratYearData
function saveDesignationData(Heading, Title, Path) {
    if (Heading in StratYearData) {
        StratYearData[Heading].push({ Title, Path });
    } else {
        StratYearData[Heading] = [{ Title, Path }];
    }
}

// Initial HTML for data binding
var dataBind = ` <div class="">
     <h4 class="section-title">SEBI (Sast) Filings (10)</h4>
 </div>`;

// Function to load data using AJAX
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/SebiSastFilings.asmx/SebiSastFilingsData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            //id, Heading, Title, Path
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var Heading = rowData.find('Heading').text();
                var Title = rowData.find('Title').text();
                var Path = rowData.find('Path').text();
                saveDesignationData(Heading, Title, Path);
            });

            // Generate HTML for each year range in StratYearData
            for (var Heading in StratYearData) {
                if (StratYearData.hasOwnProperty(Heading)) {
                    dataBind += ` <table class="table table-striped border-bottom">
         <thead class="thead-dark">
             <tr>
                 <th scope="col">Year ${Heading}</th>
             </tr>
         </thead>
         <tbody>`;

                    // Generate rows for each item in the current StratYear range
                    StratYearData[Heading].forEach(item => {
                        dataBind += ` <tr>
                 <td>
                     <a href="${item.Path}" target="_blank">
                         <img src="img/pdf_icon.png"> ${item.Title}
                     </a>
                 </td>
             </tr>`;
                    });

                    dataBind += `</tbody></table>`;
                }
            }

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

dataLoad();
