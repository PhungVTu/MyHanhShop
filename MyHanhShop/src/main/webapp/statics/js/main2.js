// Call the dataTables jQuery plugin

$(document).ready(function() {
	
  $('#dataTableProductList').DataTable();
  
  $(function () {

	    var new_dialog = function (type, row) {

	        var dlg = $("#dialog-form").clone();

	        var codeProduct = dlg.find(("#codeProduct")),

	            nameProduct = dlg.find(("#nameProduct")),

	            brand = dlg.find(("#brand")),

	            codeTypeProduct = dlg.find(("#mySelected")),
	            amount = dlg.find(("#amount")),
	            fashionType = dlg.find(("#fashionType")),
	            meterial = dlg.find(("#meterial")),
	            size = dlg.find(("#size")),
	            description = dlg.find(("#description")),
	            price = dlg.find(("#price")),
	            unitCount = dlg.find(("#unitCount")),
	           // fileImage = dlg.find(("#fileImage")),
	            descriptionDetail = dlg.find(("#descriptionDetail"));

	        type = type || 'Create';

	        var config = {

	            autoOpen: true,

	            height: 400,

	            width: 550,

	            modal: true,

	            buttons: {

	            	"Create an account": save_data,

                    "Cancel": function () {

                        dlg.dialog("close");

                    }

	            },

	            close: function () {

	                dlg.remove();

	            }

	        };

	        if (type === 'Edit') {


	        	 config.title = "Edit User";

	                get_data();

	                delete (config.buttons['Create an account']);

	                config.buttons['Edit account'] = function () {

	                    row.remove();

	                save_data();

	            };

	        }

	        dlg.dialog(config);

	        function get_data() {

	            var _codeProduct = $(row.children().get(2)).text(),

	                _nameProduct = $(row.children().get(3)).text(),
	                _brand = $(row.children().get(4)).text(),
	                _codeTypeProduct = $(row.children().get(5)).text(),
	                _amount = $(row.children().get(6)).text(),
	                _fashionType = $(row.children().get(7)).text(),
	                _meterial = $(row.children().get(8)).text(),
	                _size = $(row.children().get(9)).text(),
	                _description = $(row.children().get(10)).text(),
	                _descriptionDetail = $(row.children().get(11)).text(),
	                _unitAcount = $(row.children().get(12)).text(),
	                _price = $(row.children().get(13)).text(),
	                _fileImage = $(row.children().get(1)).text();
	            codeProduct.val(_codeProduct);
	            nameProduct.val(_nameProduct);
	            brand.val(_brand);
	            amount.val(_amount);
	            codeTypeProduct.val(_codeTypeProduct);
	            fashionType.val(_fashionType);
	            meterial.val(_meterial);
	            size.val(_size);
	            description.val(_description);
	            descriptionDetail.val(_descriptionDetail);
	            unitCount.val(_unitAcount);
	            price.val(_price);
	          //  fileImage.val(_fileImage);
	            var data={codeProduct};

	            return data;

	        }

	        function save_data() {

	           debugger;

	            dlg.dialog("close");

	        }

	    };

	    $(document).on('click', 'button.btn-danger', function () {

	        $(this).closest('tr').find('td').fadeOut(1000,

	            function () {

	                // alert($(this).text());

	                $(this).parents('tr:first').remove();

	            });

	        return false;

	    });	

	    $(document).on('click', 'button.btn-info', function () {
	        debugger;
	        new_dialog('Edit', $(this).parents('tr'));

	        return false;

	    });

	});

 
});

