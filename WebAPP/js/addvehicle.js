function addvehiclevalidation() {
    var VehicleNo = document.getElementById("VehicleNumber").value;
    if (VehicleNo == "") {
        //document.getElementById("frstName").style.borderColor = "red";
        document.getElementById("VehicleNumber").focus();
        ErrFunction("VehicleNumber is required");
        return false;
    }
    var VehicleType = document.getElementById("ddlVehicleType").value;
    if (VehicleType == "") {
        document.getElementById("ddlVehicleType").focus();
        ErrFunction("VehicleType is required");
        return false;
    }

    var ModelnYear = document.getElementById("txtModelnYear").value;
    if (ModelnYear == "") {
        document.getElementById("txtModelnYear").focus();
        ErrFunction("Year is required");
        return false;
    }
    //if (ModelnYear > Date.now) {
    //    document.getElementById("txtModelnYear").focus();
    //    alert("valid year is required");
    //    return false;
    //}
   
    var PriceperDay = document.getElementById("txtPriceperDay").value;
    if (PriceperDay == "") {
        document.getElementById("txtPriceperDay").focus();
        ErrFunction("PriceperDay is required");
        return false;
    }
    if (isNaN(PriceperDay)) {
        ErrFunction("The price must be a number only");
        return false;
    }
    var LastServicedDate = document.getElementById("txtLastServicedDate").value;
    if (LastServicedDate == "") {
        document.getElementById("txtLastServicedDate").focus();
        ErrFunction("LastServicedDate is required");
        return false;
    }
    //if (LastServicedDate < Date.now) {
    //    document.getElementById("txtLastServicedDate").focus();
    //    alert("valid ServicedDate is required");
    //    return false;
    //}
    var txtInsuranceExpiryDate = document.getElementById("txtInsuranceExpiryDate").value;
    if (txtInsuranceExpiryDate == "") {
        document.getElementById("txtInsuranceExpiryDate").focus();
        ErrFunction("InsuranceExpiryDate is required");
        return false;
    }
    var ServiceDueDate = document.getElementById("txtServiceDueDate").value;
    if (ServiceDueDate == "") {
        document.getElementById("txtServiceDueDate").focus();
        ErrFunction("ServiceDueDate is required");
        return false;
    }
    
    //if (ServiceDueDate < Date.now) {
    //    document.getElementById("txtServiceDueDate").focus();
    //    alert("ServiceDueDate ServicedDate is required");
    //    return false;
    //}
    else {
        "SuccessFunction('{0}')", "Vehicle Added Successfully!";
        return true;


    }

}
