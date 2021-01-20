using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CNPM.Models;

namespace CNPM.Controllers
{
    public class ClothesController : Controller
    {
        // GET: Clothes
        CSDLWEBEntity data = new CSDLWEBEntity();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AnubisVer2(int id)
        {
            var sp = data.SanPhams.Where(a => a.MaSP == id);
            return View(sp);
        }
        public ActionResult AoKhoac(int id)
        {
            var sp = data.SanPhams.Where(a => a.MaSP == id);
            return View(sp);
        }
        public ActionResult SoMi(int id)
        {
            var sp = data.SanPhams.Where(a => a.MaSP == id);
            return View(sp);
        }
        public ActionResult QuanDai(int id)
        {
            var sp = data.SanPhams.Where(a => a.MaSP == id);
            return View(sp);
        }
        public ActionResult QuanShort(int id)
        {
            var sp = data.SanPhams.Where(a => a.MaSP == id);
            return View(sp);
        }
    }
}