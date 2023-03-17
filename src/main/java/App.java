import org.flywaydb.core.Flyway;

import java.io.IOException;
import java.sql.SQLException;

public class App {
    public static void main(String[] args) throws IOException, SQLException {

        Flyway flyway = Flyway
                .configure()
                .dataSource("jdbc:h2:./myBase", null, null)
                .load();

        // Start the migration
        flyway.migrate();
    }
}
