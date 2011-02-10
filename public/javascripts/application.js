// For associated model forms
$(function() {
    $('form a.add_child').click(function() {
        var assoc = $(this).attr('data-association');
        var content = $('#' + assoc + '_fields_template').html();
        var regexp = new RegExp('new_' + assoc, 'g');
        var new_id = new Date().getTime();

        $(this).parent().before(content.replace(regexp, new_id));
        
        init_dynamic_fields();      // Sanatize forms Jquery
        init_toggleable_fields();   // Sanatize forms Jquery
        return false;
    });

    $('form a.remove-new-child').live('click', function() {
        $(this).parents('.child-field').remove();
        return false;
    });
    $('form a.remove-old-child').live('click', function() {
        var hidden_destroy_field = $(this).next('input.destroy-field');
        hidden_destroy_field.val(1);
        $(this).parents('.child-field').hide();
        return false;
    });

    
    /* Toggles fields based on this field's value
     * DOM Structure:
     * <div>
     *      <div>
     *          <input.togge-fields>
     *      </div>
     *      <div.toggleable-field>
     *          ...
     *      </div>
     * </div>
     * */
    init_toggleable_fields();
    $('form input.toggle-fields').live('change', function() {
        val = $(this).val();
        $(this).parent().parent().children('.toggleable-field').toggle(val);
    })

    /* Toggles dynamic fields based on a <select> field's value
     * DOM Structure:
     *      <div>
     *          <select.toggle-dynamic-fields>
     *      </div>
     *      <div.toggleable-dynamic-field>
     *          ...
     *      </div>
     * */
    init_dynamic_fields();
    $('form select.toggle-dynamic-fields').live('change', function() {
        val = $(this).val();
        $(this).parent().children('.toggleable-dynamic-field').hide();
        $(this).parent().children('.toggleable-dynamic-field.' + val ).show();
    })

    

    $('a.gallery').colorbox();



    var preview = $('a#preview');
    var admin_divs = $('div.admin')
    preview.live('click', function() {
        admin_divs.toggleClass("admin");
    });
    
    preview.live('click', function() {
        if (preview.text() == 'Preview Page') {
            preview.text('Admin View');
        }
        else {
            preview.text('Preview Page');
        }
    });
});



/* //////////////////////////////////////////////////////
 *  Helper Methods
 * //////////////////////////////////////////////////////


/* Toggles dynamic fields based on a <select> field's value */
function init_dynamic_fields() {
    tog_dyn_fields = $('form select.toggle-dynamic-fields');
    tog_dyn_fields.each( function(){
        var init_val = $(this).val();
        $(this).parent().children('.toggleable-dynamic-field').hide();
        if (init_val != "") { $(this).parent().children('.toggleable-dynamic-field.' + init_val ).show(); }
    });
//    tog_dyn_init_val = tog_dyn_fields.val();
//    tog_dyn_fields.parent().children('.toggleable-dynamic-field').hide();
//    tog_dyn_fields.parent().children('.toggleable-dynamic-field.' + tog_dyn_init_val ).show();
}

/* Toggles fields based on this field's value */
function init_toggleable_fields() {
    tog_fields = $('form input.toggle-fields');
    tog_fields.each( function(){
        if ($(this).is(':checked') ) {
            $(this).parent().parent().children('.toggleable-field').show();
        } else {
            $(this).parent().parent().children('.toggleable-field').hide();
        }
    });
}