function booking() {
    var BookingFromDate = document.getElementById("BookingFromDate").value;
    var BookingFromDate = new Date();
    if (BookingFromDate == "") {
        document.getElementById('BookingFromDate').focus();
        ErrFunction("BookingFromDate is required");
        return false;
    }
    if (BookingFromDate < new Date) {
        document.getElementById('BookingFromDate').focus();
        ErrFunction("valid BookingFromDate is required");
        return false;
    }
    var BookingToDate = document.getElementById("BookingToDate").value;
    var BookingToDate = new Date();
    if (BookingToDate == "") {
        document.getElementById("BookingToDate").focus();
        ErrFunction("BookingToDate is required");
        return false;
    }
    if (BookingToDate < new Date) {
        document.getElementById('BookingFromDate').focus();
        ErrFunction("valid BookingtoDate is required");
        return false;

    }

    else {
        "SuccessFunction('{0}')", "vehicle booked Successfully"
        return true;
    }

}




