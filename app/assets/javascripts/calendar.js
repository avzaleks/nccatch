function InitCalendar (events) {
    console.log(events);
    events.forEach(function(item, index, array) {
        var startDate = new Date(item.start);
        var startMinutes = startDate.getMinutes();
        var startSeconds = startDate.getSeconds();

        var endDate = new Date(item.end);
        var endMinutes = endDate.getMinutes();
        var endSeconds = endDate.getSeconds();

        if (startMinutes === 0 && startSeconds === 0 && endMinutes === 0 && endSeconds === 0) {
            array[index].allDay = true;
        }
    });

    $('#calendar').fullCalendar({
        theme: true,
        height: 500,
        events: events,
        eventRender: function (event, element) {
            element.qtip({
                content: event.description,
                position: {
                    my: 'top center',
                    at: 'bottom right'
                }
            });
        }
    });
}
