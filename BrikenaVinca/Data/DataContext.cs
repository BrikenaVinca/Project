using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BrikenaVinca.Models;

namespace BrikenaVinca.Data
{
    public class DataContext : DbContext
    {
        public DataContext (DbContextOptions<DataContext> options)
            : base(options)
        {
        }

        public DbSet<BrikenaVinca.Models.Skills> Skills { get; set; }

        public DbSet<BrikenaVinca.Models.Project> Project { get; set; }
    }
}
