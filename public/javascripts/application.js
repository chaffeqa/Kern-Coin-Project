// For associated model forms
$(function() {
    $('form a.add_child').click(function() {
        var assoc = $(this).attr('data-association');
        var content = $('#' + assoc + '_fields_template').html();
        var regexp = new RegExp('new_' + assoc, 'g');
        var new_id = new Date().getTime();

        $(this).parent().before(content.replace(regexp, new_id));
        return false;
    });

    $('form a.remove-new-child').live('click', function() {
        $(this).parents('.fields').remove();
        return false;
    });
    $('form a.remove-old-child').live('click', function() {
        var hidden_destroy_field = $(this).next('input.destroy-field');
        hidden_destroy_field.val(1);
        $(this).parents('.fields').hide();
        return false;
    });

    

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



