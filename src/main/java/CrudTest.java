import static org.testng.AssertJUnit.*;

public class CrudTest {
    private final ClientCrudService clientCrudService;
    private final PlanetCrudService planetCrudService;

    public CrudTest() {
        clientCrudService = new ClientCrudService();
        planetCrudService = new PlanetCrudService();
    }

    public void testClientCrudService() {
        // create a new client
        Client client = new Client();
        client.setName("Johnny");
        clientCrudService.create(client);

        // read the client
        Client savedClient = clientCrudService.read(1L);
        System.out.println(savedClient);

        // delete the client
        clientCrudService.delete(11L);

        // check that the client was deleted
        assertNull(clientCrudService.read(11L));
    }

    public void testPlanetCrudService() {
        // create a new planet
        Planet planet = new Planet();
        planet.setId("NEP");
        planet.setName("Neptune");
        planetCrudService.create(planet);

        // read the planet
        Planet savedPlanet = planetCrudService.read("NEP");
        System.out.println(savedPlanet);

        // delete the planet
        planetCrudService.delete("NEP");
    }

    public static void main(String[] args) {
        CrudTest crudTest = new CrudTest();
        crudTest.testClientCrudService();
        crudTest.testPlanetCrudService();
        HibernateUtil.getInstance().close();
    }
}
