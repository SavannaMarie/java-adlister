import com.mysql.jdbc.Driver;

import java.sql.*;

public class jdbcLecture {
    public static void main(String[] args) throws SQLException {
        Config config = new Config();
        // Instantiate MySQL driver to register to the built in java driver manager.
        DriverManager.registerDriver(new Driver());

        // Connect to the database by providing the URL, user, and the password of the user we want to connect as.
        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
        Statement stmt = connection.createStatement();

//        stmt.execute("DELETE FROM albums WHERE id = 4");

//        stmt.executeQuery("SELECT * FROM albums");


        String selectQuery = "SELECT * FROM albums";

        ResultSet rs = stmt.executeQuery(selectQuery);

        while (rs.next()){
            System.out.println("Here's an album: ");
            System.out.println(" id: " + rs.getLong("id"));
            System.out.println(" artist: " + rs.getString("artist"));
            System.out.println(" name: " + rs.getString("name"));
        }

        String query = "INSERT INTO albums (artist, name, release_date, genre, sales) VALUES('Nelly Furtado', 'Loose', 2006, 'Pop, Urban, R&B', 12.5)";
        stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);

        ResultSet rsKeys = stmt.getGeneratedKeys();
        if (rsKeys.next()) {
            System.out.println("Inserted a new record! New id: " + rsKeys.getLong(1));
        }

    }
}
















