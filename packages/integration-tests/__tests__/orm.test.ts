/**
 * ORM Integration Test for agentic-db
 *
 * Tests GraphQL schema introspection and CRUD operations against a real
 * PostgreSQL database via graphile-test, following the pattern from
 * constructive/graphql/orm-test.
 *
 * Seeds the DB with a minimal agentic_db_app_public schema, then validates
 * that PostGraphile exposes the expected queries and mutations.
 */
import path from 'path';
import { getConnectionsObject, seed } from 'graphile-test';
import { ConstructivePreset } from 'graphile-settings';

jest.setTimeout(120000);

const seedRoot = path.join(__dirname, '..', '__fixtures__', 'seed');
const sql = (file: string) => path.join(seedRoot, file);

const SCHEMAS = ['agentic_db_app_public'];

// Fixed IDs from seed data
const CONTACT_ALICE = '11111111-1111-1111-1111-111111111111';
const NOTE_KICKOFF = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';
const AGENT_RESEARCH = 'cccccccc-cccc-cccc-cccc-cccccccccccc';

let teardown: () => Promise<void>;
let query: any;

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

  teardown = connections.teardown;
  query = connections.query;
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

describe('GraphQL Schema Introspection', () => {
  it('should expose agentic-db tables via GraphQL', async () => {
    const res = await query({
      query: `{
        __schema {
          queryType { name }
          mutationType { name }
        }
      }`,
    });

    expect(res.data).toBeDefined();
    expect(res.data.__schema.queryType).toBeDefined();
    expect(res.data.__schema.mutationType).toBeDefined();
  });

  it('should have contacts, notes, and agents query fields', async () => {
    const res = await query({
      query: `{
        __type(name: "Query") {
          fields { name }
        }
      }`,
    });

    const fieldNames = res.data.__type.fields.map((f: any) => f.name);
    // With ConstructivePreset, collection fields are pluralized table names
    expect(fieldNames).toContain('contacts');
    expect(fieldNames).toContain('notes');
    expect(fieldNames).toContain('agents');
  });
});

describe('Contact CRUD via GraphQL', () => {
  it('should query seeded contacts', async () => {
    const res = await query({
      query: `{
        contacts(first: 10) {
          nodes {
            id
            firstName
            lastName
            email
            headline
          }
          totalCount
        }
      }`,
    });

    expect(res.errors).toBeUndefined();
    const contacts = unwrapData(res.data);
    expect(contacts.totalCount).toBe(2);

    const alice = contacts.nodes.find(
      (c: any) => c.id === CONTACT_ALICE,
    );
    expect(alice).toBeDefined();
    expect(alice.firstName).toBe('Alice');
    expect(alice.email).toBe('alice@example.com');
  });

  it('should create a contact', async () => {
    const res = await query({
      query: `
        mutation {
          createContact(input: { contact: {
            firstName: "Test"
            lastName: "User"
            email: "test@example.com"
            headline: "Integration Test Contact"
          }}) {
            contact {
              id
              firstName
              lastName
              email
              headline
            }
          }
        }
      `,
    });

    expect(res.errors).toBeUndefined();
    const contact = unwrapData(res.data).contact;
    expect(contact).toBeDefined();
    expect(contact.firstName).toBe('Test');
    expect(contact.lastName).toBe('User');
    expect(contact.email).toBe('test@example.com');
  });

  it('should update a contact', async () => {
    // Create
    const createRes = await query({
      query: `
        mutation {
          createContact(input: { contact: {
            firstName: "Update"
            lastName: "Me"
          }}) {
            contact { id }
          }
        }
      `,
    });

    expect(createRes.errors).toBeUndefined();
    const id = unwrapData(createRes.data).contact.id;

    // Update
    const updateRes = await query({
      query: `
        mutation($id: UUID!) {
          updateContact(input: { id: $id, contactPatch: {
            headline: "Updated Headline"
            bio: "Updated bio text"
          }}) {
            contact {
              id
              headline
              bio
            }
          }
        }
      `,
      variables: { id },
    });

    expect(updateRes.errors).toBeUndefined();
    expect(unwrapData(updateRes.data).contact.headline).toBe(
      'Updated Headline',
    );
    expect(unwrapData(updateRes.data).contact.bio).toBe('Updated bio text');
  });

  it('should delete a contact', async () => {
    // Create
    const createRes = await query({
      query: `
        mutation {
          createContact(input: { contact: {
            firstName: "Delete"
            lastName: "Me"
          }}) {
            contact { id }
          }
        }
      `,
    });

    expect(createRes.errors).toBeUndefined();
    const id = unwrapData(createRes.data).contact.id;

    // Delete
    const deleteRes = await query({
      query: `
        mutation($id: UUID!) {
          deleteContact(input: { id: $id }) {
            contact {
              id
              firstName
            }
          }
        }
      `,
      variables: { id },
    });

    expect(deleteRes.errors).toBeUndefined();
    expect(unwrapData(deleteRes.data).contact.firstName).toBe('Delete');
  });
});

describe('Note CRUD via GraphQL', () => {
  it('should query seeded notes', async () => {
    const res = await query({
      query: `{
        notes(first: 10) {
          nodes {
            id
            content
          }
          totalCount
        }
      }`,
    });

    expect(res.errors).toBeUndefined();
    expect(unwrapData(res.data).totalCount).toBe(2);
  });

  it('should create and query a note', async () => {
    const createRes = await query({
      query: `
        mutation {
          createNote(input: { note: {
            content: "This is a test note for integration testing."
          }}) {
            note {
              id
              content
            }
          }
        }
      `,
    });

    expect(createRes.errors).toBeUndefined();
    expect(unwrapData(createRes.data).note.content).toBe(
      'This is a test note for integration testing.',
    );
  });
});

describe('Agent CRUD via GraphQL', () => {
  it('should query seeded agents', async () => {
    const res = await query({
      query: `{
        agents(first: 5) {
          nodes {
            id
            name
            description
            systemPrompt
          }
        }
      }`,
    });

    expect(res.errors).toBeUndefined();
    const agents = unwrapData(res.data);
    const agent = agents.nodes.find(
      (a: any) => a.id === AGENT_RESEARCH,
    );
    expect(agent).toBeDefined();
    expect(agent.name).toBe('Research Agent');
  });

  it('should create an agent', async () => {
    const createRes = await query({
      query: `
        mutation {
          createAgent(input: { agent: {
            name: "Test Agent"
            description: "An agent for integration testing"
            systemPrompt: "You are a helpful test agent."
          }}) {
            agent {
              id
              name
              description
              systemPrompt
            }
          }
        }
      `,
    });

    expect(createRes.errors).toBeUndefined();
    const agent = unwrapData(createRes.data).agent;
    expect(agent.name).toBe('Test Agent');
    expect(agent.description).toBe('An agent for integration testing');
  });
});

describe('Relations via GraphQL', () => {
  it('should query contact -> notes via junction', async () => {
    const res = await query({
      query: `{
        contact(id: "${CONTACT_ALICE}") {
          firstName
          notes {
            nodes {
              id
              content
            }
          }
        }
      }`,
    });

    expect(res.errors).toBeUndefined();
    const contact = unwrapData(res.data);
    expect(contact.firstName).toBe('Alice');
    expect(contact.notes.nodes).toHaveLength(1);
    expect(contact.notes.nodes[0].id).toBe(NOTE_KICKOFF);
  });

  it('should create a contact-note link via junction', async () => {
    // Create a new contact
    const contactRes = await query({
      query: `
        mutation {
          createContact(input: { contact: {
            firstName: "Rel"
            lastName: "Test"
          }}) {
            contact { id }
          }
        }
      `,
    });
    expect(contactRes.errors).toBeUndefined();
    const contactId = unwrapData(contactRes.data).contact.id;

    // Create a new note
    const noteRes = await query({
      query: `
        mutation {
          createNote(input: { note: {
            content: "Note linked to new contact"
          }}) {
            note { id }
          }
        }
      `,
    });
    expect(noteRes.errors).toBeUndefined();
    const noteId = unwrapData(noteRes.data).note.id;

    // Link them
    const linkRes = await query({
      query: `
        mutation($contactId: UUID!, $noteId: UUID!) {
          createContactNote(input: { contactNote: {
            contactId: $contactId
            noteId: $noteId
          }}) {
            contactNote {
              contactId
              noteId
            }
          }
        }
      `,
      variables: { contactId, noteId },
    });

    expect(linkRes.errors).toBeUndefined();
    expect(unwrapData(linkRes.data).contactNote.contactId).toBe(
      contactId,
    );
  });

  it('should create an agent with a task', async () => {
    // Create agent
    const agentRes = await query({
      query: `
        mutation {
          createAgent(input: { agent: {
            name: "Task Agent"
          }}) {
            agent { id }
          }
        }
      `,
    });
    expect(agentRes.errors).toBeUndefined();
    const agentId = unwrapData(agentRes.data).agent.id;

    // Create task linked to agent
    const taskRes = await query({
      query: `
        mutation($agentId: UUID!) {
          createAgentTask(input: { agentTask: {
            agentId: $agentId
            title: "Test Task"
            description: "Task for integration testing"
            status: "pending"
          }}) {
            agentTask {
              id
              title
              agentId
            }
          }
        }
      `,
      variables: { agentId },
    });

    expect(taskRes.errors).toBeUndefined();
    expect(unwrapData(taskRes.data).agentTask.title).toBe('Test Task');
    expect(unwrapData(taskRes.data).agentTask.agentId).toBe(agentId);
  });

  it('should query agent -> tasks relation', async () => {
    const res = await query({
      query: `{
        agent(id: "${AGENT_RESEARCH}") {
          name
          agentTasks {
            nodes {
              title
              status
            }
          }
        }
      }`,
    });

    expect(res.errors).toBeUndefined();
    const agent = unwrapData(res.data);
    expect(agent.name).toBe('Research Agent');
    expect(agent.agentTasks.nodes.length).toBeGreaterThanOrEqual(1);
  });
});
