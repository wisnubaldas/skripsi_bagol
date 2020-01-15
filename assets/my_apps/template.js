let templates = {
    alertError: function (i) {
        return `<div class="note note-danger note-with-right-icon m-b-15">
        <div class="note-icon"><i class="fa fa-lightbulb"></i></div>
        <div class="note-content text-right">
            <h4><b>${i.title}</b></h4>
            <p>
                ${i.message}
            </p>
        </div>
    </div>`;
    },
    takeOrderTable: function(i) {
        return `
                <div class="table-responsive">
                    <table class="table m-b-0" id="tbl-order">
                        <thead>
                            <tr>
                                <th>Invoice</th>
                                <th>Delivery Name</th>
                                <th>Address</th>
                                <th colspan="2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                                ${i.map((item,i)=>
                                `<tr class="tr-${item.id}">
                                    <td>${item.invoice_number}</td>
                                    <td>${item.delivery_name}</td>
                                    <td>${item.delivery_street_address}</td>
                                    <td><a href="take_order/${item.id}" class="btn btn-link btn-sm">Detail</a></td>
                                    <td><button value="${item.id}" class="btn btn-success btn-sm add-order">Delivery Order</button></td>
                                </tr>`.trim()).join(" ")}
                                
                        </tbody>
                    </table>
                </div>
                `;
    }

}
