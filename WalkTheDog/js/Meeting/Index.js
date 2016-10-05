var Meeting = Meeting || {}

Meeting.Index = (function () {
    $(function () {
        $('#date').datetimepicker({
            locale: 'pl',
            format: 'YYYY-MM-DD HH:mm'
        });

        $("#zipCode").mask("99-999");

    });




})();