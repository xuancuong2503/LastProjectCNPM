//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CNPM.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public string Mota { get; set; }
        public string HinhAnh { get; set; }
        public Nullable<int> MaDanhMuc { get; set; }
    
        public virtual DanhMuc DanhMuc { get; set; }
    }
}
