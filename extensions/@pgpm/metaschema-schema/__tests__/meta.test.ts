import { getConnections, PgTestClient } from 'pgsql-test';

let pg: PgTestClient;
let teardown: () => Promise<void>;

describe('metaschema_schema functionality', () => {
  beforeAll(async () => {
    ({ pg, teardown } = await getConnections());
  });

  afterAll(async () => {
    await teardown();
  });

  beforeEach(async () => {
    await pg.beforeEach();
    await pg.any(`GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO public`);
  });

  afterEach(async () => {
    await pg.afterEach();
  });

  it('should create database independently', async () => {
    const owner_id = '07281002-1699-4762-57e3-ab1b92243120';
    
    const [database] = await pg.any(
      `INSERT INTO metaschema_public.database (owner_id, name) 
       VALUES ($1, $2) 
       RETURNING *`,
      [owner_id, 'test-db']
    );
    
    expect(database.owner_id).toBe(owner_id);
    expect(database.name).toBe('test-db');
    expect(database.id).toBeDefined();
  });
});
