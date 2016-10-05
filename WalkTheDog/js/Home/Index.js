var Home = Home || {}

Home.Index = (function () {
    $(function () {
        $('#date').datetimepicker({
            locale: 'pl',
            format: 'YYYY-MM-DD'
        });

        $("#zipCode").mask("99-999");

        $("#go").click(goButtonHandler);

    });

    function goButtonHandler() {
        var serialized = $('#findForm').serialize();

        window.location.href = "/Meetings/MeetingsList?" + serialized;
    }


})();