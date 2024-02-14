using Microsoft.EntityFrameworkCore;
using PersonalLibraryApi.Models;

namespace PersonalLibraryApi.Data
{
    public class BookContext : DbContext
    {
        private readonly IConfiguration _config;

        public BookContext(IConfiguration config)
        {
            _config = config;
        }

        //public BookContext(DbContextOptions<BookContext> options) : base(options) { }

        public virtual DbSet<Book> Books { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(_config.GetConnectionString("DefaultConnection"),
                    optionsBuilder => optionsBuilder.EnableRetryOnFailure());
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("PersonalLibrarySchema");

            modelBuilder.Entity<Book>().HasKey(book => book.BookId);
        }
    }
}
