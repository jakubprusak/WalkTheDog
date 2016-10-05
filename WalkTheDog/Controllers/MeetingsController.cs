using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WalkTheDog.Public.Common;
using WalkTheDog.Public.Meeting;

namespace WalkTheDog.Controllers
{
    public class MeetingsController : Controller
    {
        private static List<MeetingDto> meetingList = new List<MeetingDto>();
        // GET: Meeting
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(MeetingDto meetingDto)
        {
            if (meetingList.Any())
            {
                meetingDto.MeetingId = meetingList.Max(a => a.MeetingId) + 1;
            }
            else
            {
                meetingDto.MeetingId = 1;
            }

            meetingList.Add(meetingDto);

            return RedirectToAction("MeetingDetails", new{id = meetingDto.MeetingId});
        }

        [HttpGet]
        public ActionResult MeetingDetails(int id)
        {
           var meeting =  meetingList.Single(a => a.MeetingId == id);
           return View(meeting);
        }

        [HttpGet]
        public ActionResult MeetingsList(DogSize? dogSize, DateTime date, string zipCode, string city)
        {
            return View(meetingList);
        }
    }
}