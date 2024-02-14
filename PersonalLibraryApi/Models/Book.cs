namespace PersonalLibraryApi.Models
{
    public class Book
    {
       // title, author, publish date, pages, date acquired, rating, times read
        public long BookId { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public DateTime PublishDate { get; set; }
        public int TotalPages { get; set; }
        public DateTime AcquisitionDate { get; set; }
        public decimal Rating { get; set; }
        public int TimesRead { get; set; }
    }
}
