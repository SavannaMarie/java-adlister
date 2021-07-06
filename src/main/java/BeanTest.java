import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album album = new Album();
        album.setId(1L);
        album.setName("Led Zeppelin");
        album.setArtist("Led Zeppelin");
        album.setGenre("Hard Rock, Blues Rock");
        album.setReleaseDate(1969);
        album.setSales(8000000);

        System.out.println(album.getName());
        System.out.println(album.getGenre());

        Author author = new Author();
        author.setId(1L);
        author.setFirstName("Stephen");
        author.setLastName("King");

        System.out.println(author.getFirstName());
        System.out.println(author.getLastName());



        Quote quote1 = new Quote();
        quote1.setId(1L);
        quote1.setAuthor(author);
        quote1.setQuote("Either get busy living or get busy dying");

        Quote quote2 = new Quote();
        quote2.setId(2L);
        quote2.setAuthor(author);
        quote2.setQuote("Fiction is the truth inside the lie.");

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quote1);
        quotes.add(quote2);

        for (Quote quote : quotes) {
            System.out.print(quote.getAuthor().getFirstName());
            System.out.println(quote.getAuthor().getLastName());
            System.out.println(quote.getAuthor().getId());
            System.out.println(quote.getQuote());
        }

    }
}
