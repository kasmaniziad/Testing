var getcustinfo = function () {
    var dataRow = {
        'SiteId': $("#hdnsiteId").val()
    }
    $.ajax({
        type: 'GET',
        url: '../OnlineOrder/GetCustomerInformation',
        data: dataRow,
        success: function (response) {
            if (response != null) {
                $("#cstnme").html(response.CUST_NAME);
                $("#sitname").html(response.SITE_NUMBER);
                $("#MsiteCust").html(response.CUST_NAME + '-' + response.SITE_NUMBER)
            }
            else {
                alert("error occurred please contact administrator");
            }
        },
        error: function (xhr, status) {
            sweetAlert("Error", "Please Contact your administrator" + status, "error");
        }
    });
}

function loadcalendar() {
    var sourceFullView = { url: '../OnlineOrder/GetDiaryEvents/' };
    var sourceSummaryView = { url: '../OnlineOrder/GetDiarySummary?siteId=' + $("#hdnsiteId").val() };
    var CalLoading = true;
    $('#calendar').fullCalendar({
        theme: false,
        header: {
            left: 'prev,next',
            center: 'title',
            right: ''
        },
        defaultView: 'month',
        editable: true,
        allDaySlot: false,
        selectable: true,
        slotMinutes: 15,
        events: {
            url: '../OnlineOrder/GetDiaryMonthSummary?siteId=' + $("#hdnsiteId").val(),
            cache: false,
            lazyFetching: true,
            type: 'POST',
            success: function (response) {
                if (response.noAccess) {
                    $('#divmainslider').html("<center style='margin-top:25%;'><h1> Access Denied</h1></center>");
                    //$('.picinfo').hide();
                }
                //if (response[0].istrue) {
                //    $('.picinfo').show();
                //}
                //else { $('.picinfo').hide(); }
            },
            error: function () {
                alert('there was an error while fetching events!');
            },
        },
        eventClick: function (calEvent, jsEvent, view) {
            $("#tblstructure").html('<div class="spiner-example"><div class="sk-spinner sk-spinner-rotating-plane"></div></div>');
            $('.modal-footer').show();
            $('#Mdate').html($.fullCalendar.formatDate(calEvent.start, 'dddd dd MMMM, yyyy'));
            $('#hdndate').val($.fullCalendar.formatDate(calEvent.start, 'MM/dd/yyyy'));
            $('#weekname').html($.fullCalendar.formatDate(calEvent.start, 'dddd'));
            var dataRow1 = {
                'SITEID': $('#hdnsiteId').val(),
                'ShiftDate': $('#hdndate').val(),
            }
            $.ajax({
                type: 'GET',
                url: '../OnlineOrder/ModalDayEventClick',
                data: dataRow1,
                success: function (response) {
                    getcustinfo();
                    $("#tblstructure").html(response);
                    if ($.fullCalendar.formatDate(calEvent.start, 'MM/dd/yyyy') < $.fullCalendar.formatDate(new Date(), 'MM/dd/yyyy')) {

                        $('.modal-footer').html('<center><p>For past dates you cannot request for changes to the Plan.</p></center><button type="button" class="btn btn-default" data-dismiss="modal">Close</button>');
                    }
                },
                error: function (xhr, status) {
                    sweetAlert("Error", "Please Contact your administrator" + status, "error");
                }
            });
            $("#myModal").modal();
            $("#myModal").draggable({
                handle: ".modal-header"
            });
        },
        loading: function (bool) {
            if (bool) {
                $('#idloading').show();
            }
            else {
                setTimeout(function () {
                    $('#idloading').hide();
                }, 300);
            }
        },
        eventAfterAllRender: function (view) {
            // alert('all events are rendered'); 
        },
        disableDragging: true,
        eventRender: function (event, element, view) {
            if (view.name == 'month') {
                element.find('span.fc-event-title').html(element.find('span.fc-event-title').text());
            }
        },
        dayClick: function (date, allDay, jsEvent, view) {
            $('.modal-footer').show();
            if (!IsDateHasEvent(date)) {

            }
        },
        viewRender: function (view, element) {
            $('#hdnstartdatemonth').val($.fullCalendar.formatDate($('#calendar').fullCalendar('getView').start, 'MM/dd/yyyy'));

        }

    });
    CalLoading = false;
}
function IsDateHasEvent(date) {
    var allEvents = [];
    allEvents = $('#calendar').fullCalendar('clientEvents');
    var event = $.grep(allEvents, function (v) {
        return +v.start === +date;
    });
    return event.length > 0;
}

$(document).delegate("#btnPopupSave", "click", function () {
    swal({
        title: "Are you sure?",
        text: "You will not be able to edit this data until admin approves or reject!",
        type: "warning",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "Yes, Save it!",
        cancelButtonText: "No, cancel plx!",
        closeOnConfirm: false,
        closeOnCancel: false
    },
function (isConfirm) {
    if (isConfirm) {

        //$('#calcontainer').hide();
        var cnt = 0;
        $('.form-groupno').each(function () {
            if ($('#hdnoldvalue' + this.id).val() != $("#" + this.id).html()) {
                cnt = cnt + 1;
                var dataRow = {
                    'SiteId': $('#hdnsiteId').val(),
                    'PsplaningId': $('#hdnps' + this.id).val(),
                    'NOLoads': $("#" + this.id).html(),
                    'ProductId': $('#hdnproduct' + this.id).val(),
                    'ShiftId': $('#hdnshift' + this.id).val(),
                };
                $.ajax({
                    type: 'POST',
                    url: '../OnlineOrder/SaveCustomerRequest',
                    data: dataRow,
                    success: function (response) {
                        if (response == 'True') {
                        }
                        else {
                        }
                    },
                    error: function (xhr, status) {
                        sweetAlert("Error", "Please Contact your administrator" + status, "error");
                    }
                });
            }
        });
        if (cnt == 0) {
            sweetAlert("Error", "You didn't changed any data" + status, "error");
            return false;
        }
        $("#myModal").modal('hide');

        setTimeout(function () {
            $('#calendar').fullCalendar('refetchEvents');

        }, 2000);
        setTimeout(function () {
            $('#calcontainer').show();
        }, 2000);
        // return false;
        swal("Success!", "Your Request has been sent for Approval.", "success");
    } else {
        swal("Cancelled", "You canceled the changes", "error");
    }
});

});

