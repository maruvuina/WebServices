$(document).ready(function() {
    var max_fields = 100;
    var wrapper    = $(".wrapper");
    var add_button = $(".add_fields");
    var x = 1;
    $(add_button).click(function(e) {
        e.preventDefault();
        if(x < max_fields) {
            x++;
            $(wrapper)
                .append(
                    '<div class="concrete"><input type="text" class="form-control form-control-sm concrete_ingredient" id="ingredient_name_' + x + '" name="ingredient_name" onclick="selectIngredient(this)" placeholder="Название ингредиента"/> ' +
                    '<input type="text" class="form-control form-control-sm concrete_ingredient" name="ingredient_amount" placeholder="Количество"/> ' +
                    '<select class="form-control form-control-sm concrete_ingredient" name="ingredient_measurement"><option>стакан</option><option>грамм</option><option>мл</option><option>щепотка</option><option>кг</option><option>ложка</option></select> ' +
                    '<button class=" concrete_ingredient_remove concrete_ingredient add_fields remove_field uk-button">Remove</button></div>');
        }
    });
    $(wrapper).on("click",".remove_field", function(e) {
        e.preventDefault();
        $(this).parent('div').remove();
        x--;
    })
});

function selectIngredient(e) {
    var array_ingredient =
        [
            { id: 1, label: "Apple" },
            { id: 2, label: "Cherry" },
            { id: 3, label: "Banana" },
            { id: 4, label: "Lemon" },
            { id: 5, label: "Mango"}
        ];

    $(e).autocomplete({
        source: array_ingredient,
        minLength: 1,
        select: function(event, ui) {
            $(e).val(ui.item.label);
        }
    });
}