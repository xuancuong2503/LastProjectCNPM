using CNPM.Models;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CNPM.Controllers
{
    public class HomeController : Controller
    {
        CSDLWEBEntity data = new CSDLWEBEntity();
        public ActionResult Index()
        {
            
            ViewBag.sanPham = data.SanPhams.OrderBy(a => a.MaSP).Take(2).ToList();

            return View();
        }
      

        public ActionResult Ao()
        {


            ViewBag.ao = data.SanPhams.OrderBy(a => a.MaSP).ToList();
            return View();
        }

        public ActionResult Quan()
        {
            ViewBag.quan = data.SanPhams.OrderBy(a => a.MaSP).ToList();

            return View();
        }
        public ActionResult GioiThieu()
        {
            return View();
        }
  
    }
}