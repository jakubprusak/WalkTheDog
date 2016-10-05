using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace WalkTheDog.Public.Meeting
{
    public class MeetingDto
    {
        public MeetingDto()
        {
            Date = DateTime.Now;
        }

        public int MeetingId { get; set; }

        [Required]
        public DateTime Date { get; set; }

        public string ZipCode { get; set; }

        public string City { get; set; }

        [Required]
        public string Description { get; set; }
    }
}
