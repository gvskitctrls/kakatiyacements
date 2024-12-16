
let DesignationData = {};
//Designation, Name, Role, ParentId, id
function saveDesignationData(Name, Designation, Committee) {
    if (Committee in DesignationData) {

        DesignationData[Committee].push({ Name, Designation });
    } else {

        DesignationData[Committee] = [{ Name, Designation }];
    }
}


var dataBind = "";
//Name, Designation, Committee, ParentId, id
function dataLoad() {
    $.ajax({
        type: "POST",
        url: "Admin/CompositionofBoardCommittees.asmx/BoardCommitteesData",
        contentType: "application/xml; charset=utf-8",
        dataType: "xml",
        success: function (r) {
            var tableData = $(r).find('NewDataSet').find('Table');
            tableData.each(function () {
                var rowData = $(this);
                var Committee = rowData.find('Committee').text();
                var Designation = rowData.find('Designation').text();
                var Name = rowData.find('Name').text();
                saveDesignationData(Name, Designation, Committee);

            });
            for (let Committee in DesignationData) {
                var value = 0;
                var CommitteeType = Committee;
                dataBind += `  <table class="table table-striped border-bottom">
                            <thead>
                                <tr>
                                    <th colspan="3">${CommitteeType}</th>
                                </tr>
                            </thead>
                            <thead class="thead-dark">
                                <tr style="text-align:left">
                                    <th>Sr. No.</th>
                                    <th style="width: 45%;">Name of the Committee Member </th>
                                    <th style="width: 45%;">Designation</th>
                                </tr>
                            </thead>
                            <tbody>`;
                DesignationData[Committee].forEach(item => {
                    value = value + 1;
                    dataBind += `  <tr>
                                    <td>${value}</td>
                                    <td>${item.Name}</td>
                                    <td>${item.Designation}</td>
                                </tr>
`;
                });
                dataBind += `  </tbody>
                        </table>

                        <br />`;
                value = 0;
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