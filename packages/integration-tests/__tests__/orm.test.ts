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

const SCHEMAS = ['agentic_db_app_public'];

// Fixed IDs from seed data
const CONTACT_ALICE = '11111111-1111-1111-1111-111111111111';
const CONTACT_BOB = '22222222-2222-2222-2222-222222222222';
const NOTE_KICKOFF = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';
const AGENT_RESEARCH = 'cccccccc-cccc-cccc-cccc-cccccccccccc';

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
        seed.sqlfile([
          sql('schema.sql'),
          sql('test-data.sql'),
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
});
