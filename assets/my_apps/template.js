let templates = {
    table: function (h) {
        return `
        <table id="table-grid" class="table table-striped table-bordered">
            <thead>
                <tr>
                ${h.map((item,i)=>
                    `<th class="text-nowrap">${item}</th>`.trim()).join(" ")}
                </tr>
            </thead>
            <tbody>
                   
            </tbody>
        </table>
        `
    },
    customer: function (i) {
        return `<ul class="media-list media-list-with-divider">
                    <li class="media media-lg">
                        <a href="javascript:;" class="pull-left">
                            <img class="media-object" src="../assets/img/gallery/your_logo.png" alt="">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">${i.company}</h4>
                            <address>
                                    <strong>${i.firstname} ${i.lastname}</strong><br />
                                    ${i.default_address}<br />
                                    <a href="mailto:#">${i.email_address}</a><br />
                                    <abbr title="Phone">P:</abbr> ${i.telephone} Fax: ${i.fax}
                            </address>
                            <address>
                                    <strong>${i.date_account_created}</strong><br />
                                    IP: ${i.ip_address}<br />
                            </address>
                        </div>
                    </li>
                </ul>`;
    },
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
                    <table class="table table-bordered table-hover" id="tbl-order">
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
                                    <td><button value="${item.id}" class="btn btn-success btn-sm delivery-order">Delivery Order</button></td>
                                </tr>`.trim()).join(" ")}
                                
                        </tbody>
                    </table>
                </div>
                `;
    }

}
