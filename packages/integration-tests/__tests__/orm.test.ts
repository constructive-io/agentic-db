/**
 * ORM Integration Test for agentic-db
 *
 * Tests the full codegen -> ORM runtime chain against a real PostgreSQL database:
 *   1. Seeds DB with agentic_db_app_public tables
 *   2. Builds a Graphile schema via graphile-test with ConstructivePreset
 *   3. Runs the codegen pipeline (introspection -> inferTables -> generateOrm)
 *   4. Loads the generated createClient and instantiates models
 *   5. Exercises ORM model methods (findMany, create, delete) via QueryBuilder
 *
 * This validates that the codegen pipeline produces valid ORM code that
 * works against a real PostGraphile schema with ConstructivePreset enabled.
 *
 * Following the pattern from constructive/graphql/orm-test.
 */
import path from 'path';
import { getConnectionsObject, seed } from 'graphile-test';
import type { GraphQLQueryFnObj } from 'graphile-test';
import type { PgTestClient } from 'pgsql-test';
import { ConstructivePreset } from 'graphile-settings';
import { runCodegenAndLoad } from './helpers/codegen-helper';
import { GraphileTestAdapter } from './helpers/graphile-adapter';

jest.setTimeout(120000);

const seedRoot = path.join(__dirname, '..', '__fixtures__', 'seed');
const sql = (file: string) => path.join(seedRoot, file);

// Real pgpm package — pgsql-test's seed.pgpm() walks the `requires` chain in
// agentic-db.control and deploys the real schema (no hand-rolled SQL).
const AGENTIC_DB_PKG = path.resolve(__dirname, '..', '..', 'agentic-db');

const SCHEMAS = ['agentic_db_app_public'];

// Fixed IDs from seed data
const CONTACT_ALICE = '11111111-1111-1111-1111-111111111111';
const CONTACT_BOB = '22222222-2222-2222-2222-222222222222';
const NOTE_KICKOFF = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';
const AGENT_RESEARCH = 'cccccccc-cccc-cccc-cccc-cccccccccccc';

// Memories with seeded PostGIS Point locations (see test-data.sql)
const MEMORY_SF = 'eeeeeeee-eeee-eeee-eeee-eeeeeeee0001';
const MEMORY_OAKLAND = 'eeeeeeee-eeee-eeee-eeee-eeeeeeee0002';
const MEMORY_NYC = 'eeeeeeee-eeee-eeee-eeee-eeeeeeee0003';
// ~200 m from MEMORY_SF so the self-relation nearbyMemories has a
// matching "other" row (the plugin excludes owner-row from self-joins).
const MEMORY_FERRY = 'eeeeeeee-eeee-eeee-eeee-eeeeeeee0004';

// Bounding-box polygon around the Bay Area: covers SF + Oakland, excludes NYC.
const BAY_AREA_POLYGON = {
  type: 'Polygon',
  coordinates: [
    [
      [-122.55, 37.70],
      [-122.20, 37.70],
      [-122.20, 37.85],
      [-122.55, 37.85],
      [-122.55, 37.70],
    ],
  ],
};

describe('ORM integration', () => {
  let db: PgTestClient;
  let teardown: () => Promise<void>;
  let query: GraphQLQueryFnObj;
  let orm: Record<string, any>;

  beforeAll(async () => {
    const connections = await getConnectionsObject(
      {
        schemas: SCHEMAS,
        useRoot: true,
        authRole: 'postgres',
        preset: {
          extends: [ConstructivePreset],
        },
      },
      [
        seed.pgpm(AGENTIC_DB_PKG),
        seed.sqlfile([
          sql('test-bootstrap.sql'),
          sql('test-data.sql'),
          sql('spatial-relations.sql'),
        ]),
      ],
    );

    db = connections.db;
    teardown = connections.teardown;
    query = connections.query;

    // Run the full codegen pipeline against the live schema
    const { createClient } = await runCodegenAndLoad(query, 'orm');

    // Create the ORM client with the GraphileTestAdapter
    const adapter = new GraphileTestAdapter(query);
    orm = createClient({ adapter });
  });

  afterAll(async () => {
    if (teardown) {
      await teardown();
    }
  });

  /** Extract the first connection/mutation result regardless of field name */
  function unwrapData(data: any): any {
    return Object.values(data)[0];
  }

  /** Assert result.ok and log errors if it fails */
  function expectOk(result: any, label?: string) {
    if (!result.ok) {
      console.error(
        `[${label ?? 'ORM'}] query failed:`,
        JSON.stringify(result.errors, null, 2),
      );
    }
    expect(result.ok).toBe(true);
  }

  // =========================================================================
  // Smoke test: verify codegen produced the expected models
  // =========================================================================
  describe('codegen smoke test', () => {
    it('createClient returns model instances for all tables', () => {
      expect(orm).toBeDefined();
      expect(orm.contact).toBeDefined();
      expect(orm.note).toBeDefined();
      expect(orm.agent).toBeDefined();
      expect(orm.task).toBeDefined();
      expect(orm.contactNote).toBeDefined();
    });

    it('models have the expected CRUD methods', () => {
      expect(typeof orm.contact.findMany).toBe('function');
      expect(typeof orm.contact.findFirst).toBe('function');
      expect(typeof orm.contact.create).toBe('function');
      expect(typeof orm.note.findMany).toBe('function');
      expect(typeof orm.note.create).toBe('function');
      expect(typeof orm.agent.findMany).toBe('function');
      expect(typeof orm.agent.create).toBe('function');
      expect(typeof orm.contactNote.findMany).toBe('function');
      expect(typeof orm.contactNote.create).toBe('function');
    });
  });

  // =========================================================================
  // Test: Contact CRUD via ORM
  // =========================================================================
  describe('Contact CRUD via ORM', () => {
    it('contact.findMany returns seeded contacts', async () => {
      const result = await orm.contact
        .findMany({
          select: {
            id: true,
            firstName: true,
            lastName: true,
            email: true,
          },
        })
        .execute();

      expectOk(result, 'contact.findMany');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes).toBeDefined();
      expect(nodes.length).toBeGreaterThanOrEqual(2);

      const alice = nodes.find((c: any) => c.id === CONTACT_ALICE);
      expect(alice).toBeDefined();
      expect(alice.firstName).toBe('Alice');
      expect(alice.email).toBe('alice@example.com');
    });

    it('contact.create creates a new contact', async () => {
      const result = await orm.contact
        .create({
          data: {
            firstName: 'Test',
            lastName: 'User',
            email: 'test@example.com',
            headline: 'Integration Test Contact',
          },
          select: {
            id: true,
            firstName: true,
            lastName: true,
            email: true,
            headline: true,
          },
        })
        .execute();

      expectOk(result, 'contact.create');
      const contact = unwrapData(result.data).contact;
      expect(contact).toBeDefined();
      expect(contact.firstName).toBe('Test');
      expect(contact.lastName).toBe('User');
      expect(contact.email).toBe('test@example.com');
    });
  });

  // =========================================================================
  // Test: Note CRUD via ORM
  // =========================================================================
  describe('Note CRUD via ORM', () => {
    it('note.findMany returns seeded notes', async () => {
      const result = await orm.note
        .findMany({
          select: {
            id: true,
            content: true,
          },
        })
        .execute();

      expectOk(result, 'note.findMany');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes).toBeDefined();
      expect(nodes.length).toBeGreaterThanOrEqual(2);
    });

    it('note.create creates a new note', async () => {
      const result = await orm.note
        .create({
          data: {
            content: 'This is a test note for integration testing.',
          },
          select: {
            id: true,
            content: true,
          },
        })
        .execute();

      expectOk(result, 'note.create');
      const note = unwrapData(result.data).note;
      expect(note).toBeDefined();
      expect(note.content).toBe('This is a test note for integration testing.');
    });
  });

  // =========================================================================
  // Test: Agent CRUD via ORM
  // =========================================================================
  describe('Agent CRUD via ORM', () => {
    it('agent.findMany returns seeded agents', async () => {
      const result = await orm.agent
        .findMany({
          select: {
            id: true,
            name: true,
            description: true,
            systemPrompt: true,
          },
        })
        .execute();

      expectOk(result, 'agent.findMany');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes).toBeDefined();

      const agent = nodes.find((a: any) => a.id === AGENT_RESEARCH);
      expect(agent).toBeDefined();
      expect(agent.name).toBe('Research Agent');
    });

    it('agent.create creates a new agent', async () => {
      const result = await orm.agent
        .create({
          data: {
            name: 'Test Agent',
            description: 'An agent for integration testing',
            systemPrompt: 'You are a helpful test agent.',
          },
          select: {
            id: true,
            name: true,
            description: true,
            systemPrompt: true,
          },
        })
        .execute();

      expectOk(result, 'agent.create');
      const agent = unwrapData(result.data).agent;
      expect(agent.name).toBe('Test Agent');
      expect(agent.description).toBe('An agent for integration testing');
    });
  });

  // =========================================================================
  // Test: M:N relations (contact <-> notes via contact_notes junction)
  // =========================================================================
  describe('M:N relations (contact <-> notes)', () => {
    it('contact.findMany returns contacts with M:N notes connection', async () => {
      const result = await orm.contact
        .findMany({
          select: {
            id: true,
            firstName: true,
            notes: {
              select: { id: true, content: true },
            },
          },
          where: { id: { equalTo: CONTACT_ALICE } },
        })
        .execute();

      expectOk(result, 'contact.findMany+notes');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes).toBeDefined();
      expect(nodes.length).toBe(1);

      const alice = nodes[0];
      expect(alice.firstName).toBe('Alice');
      expect(alice.notes.nodes).toHaveLength(1);
      expect(alice.notes.nodes[0].id).toBe(NOTE_KICKOFF);
    });

    it('creates a junction row via contactNote.create', async () => {
      // Create a new contact
      const contactResult = await orm.contact
        .create({
          data: { firstName: 'Rel', lastName: 'Test' },
          select: { id: true },
        })
        .execute();

      expectOk(contactResult, 'contactNote.contact.create');
      const contactId = unwrapData(contactResult.data).contact.id;

      // Create a new note
      const noteResult = await orm.note
        .create({
          data: { content: 'Note linked to new contact' },
          select: { id: true },
        })
        .execute();

      expectOk(noteResult, 'contactNote.note.create');
      const noteId = unwrapData(noteResult.data).note.id;

      // Link them via junction
      const linkResult = await orm.contactNote
        .create({
          data: { contactId, noteId },
          select: { contactId: true, noteId: true },
        })
        .execute();

      expectOk(linkResult, 'contactNote.create');
      const link = unwrapData(linkResult.data).contactNote;
      expect(link.contactId).toBe(contactId);
      expect(link.noteId).toBe(noteId);
    });
  });

  // =========================================================================
  // Test: 1:N relations (agent -> tasks)
  // =========================================================================
  describe('1:N relations (agent -> tasks)', () => {
    it('creates an agent with a task via ORM', async () => {
      // Create agent
      const agentResult = await orm.agent
        .create({
          data: { name: 'Task Agent' },
          select: { id: true },
        })
        .execute();

      expectOk(agentResult, 'agent.create(task)');
      const agentId = unwrapData(agentResult.data).agent.id;

      // Create task linked to agent
      const taskResult = await orm.task
        .create({
          data: {
            agentId,
            title: 'Test Task',
            description: 'Task for integration testing',
            status: 'pending',
          },
          select: {
            id: true,
            title: true,
            agentId: true,
          },
        })
        .execute();

      expectOk(taskResult, 'task.create');
      const task = unwrapData(taskResult.data).task;
      expect(task.title).toBe('Test Task');
      expect(task.agentId).toBe(agentId);
    });

    it('agent.findMany returns agents with tasks connection', async () => {
      const result = await orm.agent
        .findMany({
          select: {
            id: true,
            name: true,
            tasks: {
              select: { title: true, status: true },
            },
          },
          where: { id: { equalTo: AGENT_RESEARCH } },
        })
        .execute();

      expectOk(result, 'agent.findMany+tasks');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes).toBeDefined();
      expect(nodes.length).toBe(1);

      const agent = nodes[0];
      expect(agent.name).toBe('Research Agent');
      expect(agent.tasks.nodes.length).toBeGreaterThanOrEqual(1);
    });
  });

  // =========================================================================
  // Test: Task CRUD + filters + update
  // =========================================================================
  describe('Task CRUD + filters + update', () => {
    let createdTaskId: string;

    it('task.create with a status and priority', async () => {
      const result = await orm.task
        .create({
          data: {
            agentId: AGENT_RESEARCH,
            title: 'Filter test task',
            description: 'Used to exercise task filters',
            status: 'in_progress',
            priority: 2,
          },
          select: { id: true, title: true, status: true, priority: true },
        })
        .execute();
      expectOk(result, 'task.create(filter seed)');
      createdTaskId = unwrapData(result.data).task.id;
    });

    it('task.findMany with where filter by status', async () => {
      const result = await orm.task
        .findMany({
          where: { status: { equalTo: 'in_progress' } },
          select: { id: true, title: true, status: true },
        })
        .execute();
      expectOk(result, 'task.findMany(status)');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes.length).toBeGreaterThanOrEqual(1);
      for (const n of nodes) {
        expect(n.status).toBe('in_progress');
      }
    });

    it('task.update patches status and result', async () => {
      const result = await orm.task
        .update({
          where: { id: createdTaskId },
          data: { status: 'completed', result: 'done' },
          select: { id: true, status: true, result: true },
        })
        .execute();
      expectOk(result, 'task.update');
      const task = unwrapData(result.data).task;
      expect(task.status).toBe('completed');
      expect(task.result).toBe('done');
    });

    it('task.delete removes the row', async () => {
      const result = await orm.task
        .delete({ where: { id: createdTaskId }, select: { id: true } })
        .execute();
      expectOk(result, 'task.delete');
    });
  });

  // =========================================================================
  // Test: Memory CRUD (long-term episodic memory)
  // =========================================================================
  describe('Memory CRUD via ORM', () => {
    it('memory.create + memory.findMany + memory.update', async () => {
      const create = await orm.memory
        .create({
          data: {
            agentId: AGENT_RESEARCH,
            title: 'First-run checklist',
            content: 'Verified docker + ollama connectivity before running suite.',
            location: 'ci',
            mood: 'neutral',
            tags: ['setup', 'smoke'],
            embeddingText: 'Verified docker + ollama connectivity',
          },
          select: { id: true, title: true, tags: true },
        })
        .execute();
      expectOk(create, 'memory.create');
      const memory = unwrapData(create.data).memory;
      expect(memory.title).toBe('First-run checklist');
      expect(memory.tags).toEqual(['setup', 'smoke']);

      const list = await orm.memory
        .findMany({
          where: { id: { equalTo: memory.id } },
          select: { id: true, title: true, mood: true, agentId: true },
        })
        .execute();
      expectOk(list, 'memory.findMany');
      const nodes = unwrapData(list.data).nodes;
      expect(nodes).toHaveLength(1);
      expect(nodes[0].agentId).toBe(AGENT_RESEARCH);

      const patched = await orm.memory
        .update({
          where: { id: memory.id },
          data: { mood: 'confident' },
          select: { id: true, mood: true },
        })
        .execute();
      expectOk(patched, 'memory.update');
      expect(unwrapData(patched.data).memory.mood).toBe('confident');
    });
  });

  // =========================================================================
  // Test: PostGIS spatial support on memories.location_geo
  //
  // What IS testable through the typed ORM today:
  //   - geography columns round-trip correctly (insert WKT/GeoJSON, read
  //     back GeoJSON + srid through the generated output type)
  //   - `locationGeo: { isNull: false }` filters out rows without geometry
  //
  // What is NOT testable through the typed ORM today (verified against the
  // real schema + graphile-postgis@2.9.7 in CI): the generated
  // `GeographyInterfaceFilter` exposes `bboxIntersects2D`, `coveredBy`,
  // `covers`, `exactlyEquals`, `intersects` — but all of them fail at
  // runtime with `parse error - invalid geometry` because the spatial
  // function operators in graphile-postgis 2.9.7 pass the GeoJSON value
  // straight through to PostgreSQL instead of wrapping it with
  // ST_GeomFromGeoJSON(...)::geography. Only the `withinDistance` operator
  // has the correct wrapping, and it is not exposed on the generated
  // filter type at all. As a result, "find memories within 5km of here"
  // and "find memories inside this polygon" are NOT possible through the
  // typed ORM today — they require raw SQL (ST_DWithin / ST_Covers).
  // =========================================================================
  describe('PostGIS spatial support on memory.location_geo', () => {
    it('returns the stored Point as GeoJSON + srid via the generated output type', async () => {
      const result = await orm.memory
        .findMany({
          where: { id: { equalTo: MEMORY_SF } },
          select: {
            id: true,
            title: true,
            locationGeo: { select: { geojson: true, srid: true } },
          },
        })
        .execute();
      expectOk(result, 'memory.findMany(MEMORY_SF)');
      const nodes = unwrapData(result.data).nodes;
      expect(nodes).toHaveLength(1);
      const sf = nodes[0];
      expect(sf.locationGeo).toBeTruthy();
      expect(sf.locationGeo.srid).toBe(4326);
      // GeoJSON is serialized as a string by the postgis plugin.
      const geojson =
        typeof sf.locationGeo.geojson === 'string'
          ? JSON.parse(sf.locationGeo.geojson)
          : sf.locationGeo.geojson;
      expect(geojson.type).toBe('Point');
      expect(geojson.coordinates[0]).toBeCloseTo(-122.4194, 3);
      expect(geojson.coordinates[1]).toBeCloseTo(37.7749, 3);
    });

    it('locationGeo: { isNull: false } returns the geo-tagged memories', async () => {
      const result = await orm.memory
        .findMany({
          where: { locationGeo: { isNull: false } },
          select: {
            id: true,
            title: true,
            locationGeo: { select: { srid: true } },
          },
        })
        .execute();
      expectOk(result, 'memory.findMany(isNull:false)');
      const nodes = unwrapData(result.data).nodes;
      // Every returned row must actually have geometry attached.
      for (const n of nodes) {
        expect(n.locationGeo).toBeTruthy();
        expect(n.locationGeo.srid).toBe(4326);
      }
      const ids = nodes.map((n: any) => n.id);
      expect(ids).toEqual(
        expect.arrayContaining([MEMORY_SF, MEMORY_OAKLAND, MEMORY_NYC]),
      );
    });

    // Scalar bbox overlap filter: `&&` (graphile-postgis's
    // PostgisOperatorFactory). Bay-Area polygon covers SF + Oakland
    // but excludes NYC, so we expect the two Bay-Area memories
    // (plus the close-by MEMORY_FERRY fixture) and NOT the NYC memory.
    it('bboxIntersects2D(Polygon) returns memories whose points fall inside the box', async () => {
      const result = await orm.memory
        .findMany({
          where: { locationGeo: { bboxIntersects2D: BAY_AREA_POLYGON } },
          select: { id: true, title: true },
        })
        .execute();
      expectOk(result, 'memory.findMany(bboxIntersects2D)');
      const ids = unwrapData(result.data).nodes.map((n: any) => n.id);
      expect(ids).toEqual(
        expect.arrayContaining([MEMORY_SF, MEMORY_OAKLAND, MEMORY_FERRY]),
      );
      expect(ids).not.toContain(MEMORY_NYC);
    });
  });

  // =========================================================================
  // Test: RelationSpatial — @spatialRelation smart tags on the owner columns
  // expose cross-table spatial filters via graphile-postgis's
  // PostgisSpatialRelationsPlugin. The blueprint defines 5 relations
  // (see packages/provision/src/schemas/spatial-relations.ts); the fixture
  // `spatial-relations.sql` bakes matching smart tags into the column
  // comments so the plugin picks them up during introspection.
  //
  // Each test exercises the generated filter shape:
  //   where: { <relationName>: { distance: <meters>, some: { ... } } }
  //
  // Seed coordinates (see test-data.sql) are chosen so each test has a
  // positive match (SF or NYC) plus a negative control (Tokyo / Paris /
  // London / Berlin).
  // =========================================================================
  describe('RelationSpatial via ORM', () => {
    it('memory.nearbyPlaces: memories within 5 km of any place near SF', async () => {
      const result = await orm.memory
        .findMany({
          where: {
            nearbyPlaces: {
              distance: 5000,
              some: { category: { equalTo: 'market' } },
            },
          },
          select: { id: true, title: true },
        })
        .execute();
      expectOk(result, 'memory.findMany(nearbyPlaces)');
      const ids = unwrapData(result.data).nodes.map((n: any) => n.id);
      // Ferry Building is ~200 m from the SF memory and ~13 km from
      // Oakland, so only SF matches.
      expect(ids).toContain(MEMORY_SF);
      expect(ids).not.toContain(MEMORY_OAKLAND);
      expect(ids).not.toContain(MEMORY_NYC);
    });

    it('memory.nearbyContacts: memories within 2 km of any contact in SF', async () => {
      const result = await orm.memory
        .findMany({
          where: {
            nearbyContacts: {
              distance: 2000,
              some: { firstName: { equalTo: 'Alice' } },
            },
          },
          select: { id: true, title: true },
        })
        .execute();
      expectOk(result, 'memory.findMany(nearbyContacts)');
      const ids = unwrapData(result.data).nodes.map((n: any) => n.id);
      // Alice is ~250 m from the SF memory, ~13 km from Oakland,
      // and ~4100 km from NYC.
      expect(ids).toContain(MEMORY_SF);
      expect(ids).not.toContain(MEMORY_OAKLAND);
      expect(ids).not.toContain(MEMORY_NYC);
    });

    it('trip.nearbyVenues: trips within 1 km of any SoMa venue', async () => {
      const result = await orm.trip
        .findMany({
          where: {
            nearbyVenues: {
              distance: 1000,
              some: { neighborhood: { equalTo: 'SoMa' } },
            },
          },
          select: { id: true, name: true },
        })
        .execute();
      expectOk(result, 'trip.findMany(nearbyVenues)');
      const names = unwrapData(result.data).nodes.map((n: any) => n.name);
      expect(names).toContain('SF Retrieval Summit');
      expect(names).not.toContain('NYC AI Conf');
      expect(names).not.toContain('Paris Offsite');
    });

    it('event.nearbyVenues: events within 500 m of any Midtown venue', async () => {
      const result = await orm.event
        .findMany({
          where: {
            nearbyVenues: {
              distance: 500,
              some: { neighborhood: { equalTo: 'Midtown' } },
            },
          },
          select: { id: true, name: true },
        })
        .execute();
      expectOk(result, 'event.findMany(nearbyVenues)');
      const names = unwrapData(result.data).nodes.map((n: any) => n.name);
      // AI Conf Welcome Reception is ~50 m from Times Square Diner
      // (Midtown). The SF event is far from any Midtown venue.
      expect(names).toContain('AI Conf Welcome Reception');
      expect(names).not.toContain('SF Ferry Building Mixer');
      expect(names).not.toContain('Berlin Hackathon');
    });

    it('memory.nearbyMemories: self-relation returns memories within 1 km of another Bay-Area memory', async () => {
      const result = await orm.memory
        .findMany({
          where: {
            nearbyMemories: {
              distance: 1000,
              // Target is MEMORY_FERRY (~260 m from SF). The plugin
              // excludes the owner row from self-relations, so we
              // filter the target on a DIFFERENT row than we expect
              // back in the result set.
              some: { id: { equalTo: MEMORY_FERRY } },
            },
          },
          select: { id: true, title: true },
        })
        .execute();
      expectOk(result, 'memory.findMany(nearbyMemories)');
      const ids = unwrapData(result.data).nodes.map((n: any) => n.id);
      // MEMORY_SF is ~200 m from MEMORY_FERRY, so SF matches.
      // Oakland is ~13 km from Ferry Building; NYC is ~4100 km.
      // The FERRY row itself is excluded by the self-relation.
      expect(ids).toContain(MEMORY_SF);
      expect(ids).not.toContain(MEMORY_FERRY);
      expect(ids).not.toContain(MEMORY_OAKLAND);
      expect(ids).not.toContain(MEMORY_NYC);
    });
  });

  // =========================================================================
  // Test: Conversation + Message (1:N) with message ordering via orderBy
  // =========================================================================
  describe('Conversation + Message CRUD via ORM', () => {
    let conversationId: string;

    it('conversation.create returns a conversation with id', async () => {
      const res = await orm.conversation
        .create({
          data: {
            agentId: AGENT_RESEARCH,
            title: 'Integration test conversation',
            status: 'active',
            meta: { source: 'jest', runId: 1 },
          },
          select: { id: true, title: true, status: true },
        })
        .execute();
      expectOk(res, 'conversation.create');
      const conv = unwrapData(res.data).conversation;
      conversationId = conv.id;
      expect(conv.title).toBe('Integration test conversation');
    });

    it('message.create (user + assistant) appends to the conversation', async () => {
      const user = await orm.message
        .create({
          data: {
            conversationId,
            role: 'user',
            content: 'What is vector search?',
            tokenCount: 6,
          },
          select: { id: true, role: true, content: true },
        })
        .execute();
      expectOk(user, 'message.create(user)');
      expect(unwrapData(user.data).message.role).toBe('user');

      const assistant = await orm.message
        .create({
          data: {
            conversationId,
            role: 'assistant',
            content: 'It is similarity search in embedding space.',
            tokenCount: 11,
            toolCalls: { calls: [] },
          },
          select: { id: true, role: true, tokenCount: true },
        })
        .execute();
      expectOk(assistant, 'message.create(assistant)');
      expect(unwrapData(assistant.data).message.tokenCount).toBe(11);
    });

    it('conversation.findMany includes messages ordered by createdAt', async () => {
      const res = await orm.conversation
        .findMany({
          where: { id: { equalTo: conversationId } },
          select: {
            id: true,
            title: true,
            messages: {
              orderBy: ['CREATED_AT_ASC'],
              select: { role: true, content: true },
            },
          },
        })
        .execute();
      expectOk(res, 'conversation.findMany+messages');
      const conv = unwrapData(res.data).nodes[0];
      expect(conv.messages.nodes.length).toBeGreaterThanOrEqual(2);
      expect(conv.messages.nodes[0].role).toBe('user');
      expect(conv.messages.nodes[1].role).toBe('assistant');
    });
  });

  // =========================================================================
  // Test: Skill + ToolDefinition + SkillTool (M:N junction)
  // =========================================================================
  describe('Skill, ToolDefinition, SkillTool (M:N)', () => {
    it('connects a skill to a toolDefinition via the skillTool junction', async () => {
      const skillRes = await orm.skill
        .create({
          data: {
            agentId: AGENT_RESEARCH,
            name: 'Summarize document',
            description: 'Produces a concise summary of a document',
            category: 'writing',
            intentTrigger: 'summarize this document',
            isActive: true,
          },
          select: { id: true, name: true, isActive: true },
        })
        .execute();
      expectOk(skillRes, 'skill.create');
      const skillId = unwrapData(skillRes.data).skill.id;

      const toolRes = await orm.toolDefinition
        .create({
          data: {
            name: 'fetchUrl',
            description: 'HTTP GET a URL and return text',
            toolType: 'http',
            schema: { type: 'object', properties: { url: { type: 'string' } } },
            isActive: true,
          },
          select: { id: true, name: true, toolType: true },
        })
        .execute();
      expectOk(toolRes, 'toolDefinition.create');
      const toolDefinitionId = unwrapData(toolRes.data).toolDefinition.id;

      const linkRes = await orm.skillTool
        .create({
          data: { skillId, toolDefinitionId },
          select: { skillId: true, toolDefinitionId: true },
        })
        .execute();
      expectOk(linkRes, 'skillTool.create');
      const link = unwrapData(linkRes.data).skillTool;
      expect(link.skillId).toBe(skillId);
      expect(link.toolDefinitionId).toBe(toolDefinitionId);
    });
  });

  // =========================================================================
  // Test: Rule CRUD (requires agentId)
  // =========================================================================
  describe('Rule CRUD via ORM', () => {
    it('rule.create + findMany by agentId', async () => {
      const create = await orm.rule
        .create({
          data: {
            agentId: AGENT_RESEARCH,
            name: 'Auto-tag meeting notes',
            description: 'When a note is created with "meeting" keyword, tag it.',
            triggerType: 'note_created',
            triggerConfig: { keyword: 'meeting' },
            actionType: 'add_tag',
            actionConfig: { tag: 'meeting' },
            isActive: true,
            priority: 10,
          },
          select: { id: true, name: true, agentId: true, priority: true },
        })
        .execute();
      expectOk(create, 'rule.create');
      expect(unwrapData(create.data).rule.priority).toBe(10);

      const list = await orm.rule
        .findMany({
          where: { agentId: { equalTo: AGENT_RESEARCH } },
          select: { id: true, name: true, triggerType: true },
        })
        .execute();
      expectOk(list, 'rule.findMany(agent)');
      expect(unwrapData(list.data).nodes.length).toBeGreaterThanOrEqual(1);
    });
  });

  // =========================================================================
  // Test: Project CRUD + Goal + Habit (Life-OS headline features)
  // =========================================================================
  describe('Project / Goal / Habit CRUD via ORM', () => {
    it('project.create + update status', async () => {
      const create = await orm.project
        .create({
          data: {
            name: 'Release 1.2',
            description: 'Shipping the vector-search docs rewrite',
            status: 'active',
            projectType: 'engineering',
            priority: 1,
            tags: ['docs', 'search'],
          },
          select: { id: true, name: true, status: true },
        })
        .execute();
      expectOk(create, 'project.create');
      const projectId = unwrapData(create.data).project.id;

      const update = await orm.project
        .update({
          where: { id: projectId },
          data: { status: 'completed' },
          select: { id: true, status: true },
        })
        .execute();
      expectOk(update, 'project.update');
      expect(unwrapData(update.data).project.status).toBe('completed');
    });

    it('goal.create + habit.create', async () => {
      const goal = await orm.goal
        .create({
          data: {
            title: 'Read 12 books this year',
            description: 'One per month, non-fiction preferred',
            status: 'active',
            progress: '0.25',
            tags: ['reading', 'learning'],
          },
          select: { id: true, title: true, progress: true },
        })
        .execute();
      expectOk(goal, 'goal.create');
      // progress is numeric; postgraphile returns it as a string
      expect(parseFloat(unwrapData(goal.data).goal.progress)).toBeCloseTo(0.25);

      const habit = await orm.habit
        .create({
          data: {
            name: 'Morning walk',
            frequency: 'daily',
            streak: 5,
            tags: ['health'],
          },
          select: { id: true, name: true, streak: true },
        })
        .execute();
      expectOk(habit, 'habit.create');
      expect(unwrapData(habit.data).habit.streak).toBe(5);
    });
  });

  // =========================================================================
  // Test: Expense CRUD (accounting)
  // =========================================================================
  describe('Expense CRUD via ORM', () => {
    it('expense.create + findMany by category', async () => {
      const create = await orm.expense
        .create({
          data: {
            description: 'Cloud hosting — April',
            amount: '42.50',
            currency: 'USD',
            category: 'infrastructure',
            vendor: 'CloudProvider',
            tags: ['recurring'],
          },
          select: { id: true, description: true, category: true, amount: true },
        })
        .execute();
      expectOk(create, 'expense.create');
      expect(unwrapData(create.data).expense.category).toBe('infrastructure');

      const list = await orm.expense
        .findMany({
          where: { category: { equalTo: 'infrastructure' } },
          select: { id: true, description: true, vendor: true },
        })
        .execute();
      expectOk(list, 'expense.findMany(category)');
      expect(unwrapData(list.data).nodes.length).toBeGreaterThanOrEqual(1);
    });
  });

  // =========================================================================
  // Test: ToolExecution linked to a Message
  // =========================================================================
  describe('ToolExecution linked to Message', () => {
    it('records a tool execution against a message', async () => {
      // Build: conversation -> message -> toolDefinition -> toolExecution
      const conv = await orm.conversation
        .create({
          data: { title: 'Tool exec conversation' },
          select: { id: true },
        })
        .execute();
      expectOk(conv, 'conversation.create(toolExec)');
      const conversationId = unwrapData(conv.data).conversation.id;

      const msg = await orm.message
        .create({
          data: {
            conversationId,
            role: 'assistant',
            content: 'Calling fetchUrl...',
          },
          select: { id: true },
        })
        .execute();
      expectOk(msg, 'message.create(toolExec)');
      const messageId = unwrapData(msg.data).message.id;

      const tool = await orm.toolDefinition
        .create({
          data: { name: 'echoTool', toolType: 'noop' },
          select: { id: true },
        })
        .execute();
      expectOk(tool, 'toolDefinition.create(exec)');
      const toolDefinitionId = unwrapData(tool.data).toolDefinition.id;

      const exec = await orm.toolExecution
        .create({
          data: {
            toolDefinitionId,
            messageId,
            input: { url: 'https://example.com' },
            output: { status: 200, bytes: 1337 },
            status: 'completed',
            startedAt: '2026-01-01T00:00:00.000Z',
            completedAt: '2026-01-01T00:00:00.042Z',
          },
          select: {
            id: true,
            status: true,
            startedAt: true,
            completedAt: true,
            messageId: true,
            toolDefinitionId: true,
          },
        })
        .execute();
      expectOk(exec, 'toolExecution.create');
      const row = unwrapData(exec.data).toolExecution;
      expect(row.status).toBe('completed');
      expect(row.startedAt).toBeTruthy();
      expect(row.completedAt).toBeTruthy();
      expect(row.messageId).toBe(messageId);
      expect(row.toolDefinitionId).toBe(toolDefinitionId);
    });
  });

  // =========================================================================
  // Test: AutonomyRecord + self-referential M:N link
  // =========================================================================
  describe('AutonomyRecord self-referential M:N link', () => {
    it('creates two records and links them via autonomyRecordLink', async () => {
      const a = await orm.autonomyRecord
        .create({
          data: {
            title: 'Insight A',
            recordType: 'insight',
            content: 'Vector similarity benefits from FTS fallback',
            status: 'active',
            tags: ['retrieval'],
          },
          select: { id: true },
        })
        .execute();
      expectOk(a, 'autonomyRecord.create(A)');
      const sourceId = unwrapData(a.data).autonomyRecord.id;

      const b = await orm.autonomyRecord
        .create({
          data: {
            title: 'Insight B',
            recordType: 'insight',
            content: 'BM25 picks up exact tokens the embedding model smooths over',
            status: 'active',
            tags: ['retrieval'],
          },
          select: { id: true },
        })
        .execute();
      expectOk(b, 'autonomyRecord.create(B)');
      const targetId = unwrapData(b.data).autonomyRecord.id;

      const link = await orm.autonomyRecordLink
        .create({
          data: { sourceRecordId: sourceId, targetRecordId: targetId },
          select: { sourceRecordId: true, targetRecordId: true },
        })
        .execute();
      expectOk(link, 'autonomyRecordLink.create');
      const linkRow = unwrapData(link.data).autonomyRecordLink;
      expect(linkRow.sourceRecordId).toBe(sourceId);
      expect(linkRow.targetRecordId).toBe(targetId);
    });
  });

  // =========================================================================
  // Test: Pagination with first / offset
  // =========================================================================
  describe('Pagination and ordering', () => {
    it('task.findMany respects first and offset', async () => {
      // Seed a few tasks
      for (let i = 0; i < 3; i++) {
        const r = await orm.task
          .create({
            data: {
              agentId: AGENT_RESEARCH,
              title: `Pagination seed ${i}`,
              status: 'pending',
              priority: i,
            },
            select: { id: true },
          })
          .execute();
        expectOk(r, `task.create(pg ${i})`);
      }

      const first = await orm.task
        .findMany({
          first: 2,
          select: { id: true, title: true },
        })
        .execute();
      expectOk(first, 'task.findMany(first=2)');
      expect(unwrapData(first.data).nodes.length).toBeLessThanOrEqual(2);
    });
  });
});
