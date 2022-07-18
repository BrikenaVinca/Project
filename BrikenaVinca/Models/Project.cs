using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BrikenaVinca.Models
{
    public class Project
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string ImagePath { get; set; }
    }
}
