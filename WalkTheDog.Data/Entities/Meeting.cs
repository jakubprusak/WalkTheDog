using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WalkTheDog.Data.Entities
{
    public class Meeting : BaseEntity<int>
    {
        public DateTime Date { get; set; }

        public int ZipCodeId { get; set; }

        public ZipCode ZipCode { get; set; }

        public string Description { get; set; }
    }
}
