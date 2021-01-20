using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CNPM.Models;

namespace CNPM.Controllers
{
    public class AccountController : Controller
    {
        CSDLWEBEntity data = new CSDLWEBEntity();
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ForgetPassword()
        {
            return View();
        }
        public ActionResult QuanTri()
        {
            ViewBag.quanTri = data.SanPhams.OrderBy(a => a.MaSP).ToList();
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        
        public ActionResult Login(FormCollection collection)
        {
            //Gán các giá trị người dùng nhập liệu cho các biến
            var username = collection["username"];
            var password = collection["password"];
            if (string.IsNullOrEmpty(username))
            {
                ViewData["loi1"] = "Vui lòng nhập UserName";
            }
            else if (string.IsNullOrEmpty(password))
            {
                ViewData["loi2"] = "Vui lòng nhập PassWord";
            }
            else
            {
                //Gán giá trị đối tượng được tạo mới
                Account ad = data.Accounts.SingleOrDefault(n => n.UserName == username && n.PassWord == password);
                if (ad != null)
                {
                    //Session["TaiKhoanadmin"] = ad;
                    return RedirectToAction("Product","Account");
                }
                else
                {
                    ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
                }
            }
            return View();
        }
        public ActionResult Product(SanPham obj)
        {
                return View(obj);
        }
        [HttpPost]
        public ActionResult AddProduct(SanPham model)
        {
            SanPham sp = new SanPham();
            if (ModelState.IsValid)
            {
                sp.MaSP = model.MaSP;  
                sp.TenSP = model.TenSP;
                sp.Mota = model.Mota;
                sp.HinhAnh = model.HinhAnh;
                sp.MaDanhMuc = model.MaDanhMuc;
                if (model.MaSP == 0)
                {
                   data.SanPhams.Add(sp);
                   data.SaveChanges();
                }
                else
                {
                    data.Entry(sp).State = EntityState.Modified;
                    data.SaveChangesAsync();                   
                }
               
            }
            ModelState.Clear();
            return View("Product");


        }
         public ActionResult ProductList()
        {
            var sp= data.SanPhams.ToList();
            return View(sp);
        }
         public ActionResult DeleteProduct(int ma)
        {
            var sp = data.SanPhams.Where(a => a.MaSP == ma).First();
            data.SanPhams.Remove(sp);
            data.SaveChanges();
            var list = data.SanPhams.ToList();
            return View("ProductList", list);
        }

    }
}