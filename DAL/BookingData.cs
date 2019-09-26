//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class BookingData
    {
        public long BookingID { get; set; }
        public Nullable<long> VehicleId { get; set; }
        public Nullable<System.DateTime> BookingDate { get; set; }
        public Nullable<System.DateTime> BookedfromDate { get; set; }
        public Nullable<System.DateTime> BookedToDate { get; set; }
        public Nullable<int> TotalNoOfDays { get; set; }
        public Nullable<long> Amount { get; set; }
        public string PaymentMode { get; set; }
        public string PaymentReferenceId { get; set; }
        public Nullable<long> BookingUserId { get; set; }
        public Nullable<int> BranchCode { get; set; }
        public Nullable<bool> IsBookingApproved { get; set; }
        public Nullable<bool> IsBookingCancelled { get; set; }
        public string ApprovedBy { get; set; }
        public Nullable<System.DateTime> ApprovedOn { get; set; }
        public string CancelledBy { get; set; }
        public Nullable<System.DateTime> CancelledOn { get; set; }
        public string Remarks { get; set; }
    
        public virtual UserMaster UserMaster { get; set; }
        public virtual BranchMaster BranchMaster { get; set; }
        public virtual VehicleInfo VehicleInfo { get; set; }
    }
}
