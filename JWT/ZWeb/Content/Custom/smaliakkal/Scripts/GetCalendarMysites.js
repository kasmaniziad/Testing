function getcalendar(itemId)
{
    var sourceFullView = { url: '../OnlineOrder/GetDiaryEvents?siteId='+itemId };
    var sourceSummaryView = { url: '../OnlineOrder/GetDiarySummary?siteId=' + $("#hdnsiteId").val() };
    var CalLoading = true;
    $('#calendar'+itemId).fullCalendar({
        theme: false,
        header: {
            left: 'prev,next,today',
            center: 'title',
            right: ''
        },
        height: 250,
        defaultView: 'basicDay',
        editable: true,
        allDaySlot: false,
        selectable: true,
        slotMinutes: 15,
        events: {
            url:'../OnlineOrder/GetDiaryEvents?siteId='+itemId ,
            cache: false,
            lazyFetching: true,
            type: 'POST',
            success: function (response) {
                if (response.nodata) {
                    $('#calendar'+itemId).hide();
                    $('#pagenotfount'+itemId).show();
                }
                else{
                    $('#calendar'+itemId).show();
                    $('#pagenotfount' + itemId).hide();
                }
            },
            error: function () {
                alert('there was an error while fetching events!');
            },
        },
        eventClick: function (calEvent, jsEvent, view) {

        },
        loading: function (bool) {
            if (bool) {
                $('#idloading').show();
            }
            else {
                setTimeout(function () {
                    $('#idloading').hide();
                }, 700);
            }
        },
        eventColor: 'transparent',
        eventAfterAllRender: function (view) {
            // alert('all events are rendered'); // remove your loading
        },
        dayRender: function (date, cell) {
            cell.css("background-color", "#FFF");
        },
        disableDragging: true
        ,
        eventRender: function (event, element) {
            element.find('.fc-event-title').html(event.title);
        },

        dayClick: function (date, allDay, jsEvent, view) {

        },
        viewRender: function (view, element) {

        }

    });
    CalLoading = false;
}