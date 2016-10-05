using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WalkTheDog.Public.Common;

namespace WalkTheDog.Public.Home
{
    public class SearchDogCriteriaDto
    {
        public SearchDogCriteriaDto()
        {
            Date = DateTime.Now;
        }

        public DogSize DogSize { get; set; }

        public string ZipCode { get; set; }

        public string City { get; set; }

        public DateTime Date { get; set; }
    }
}
