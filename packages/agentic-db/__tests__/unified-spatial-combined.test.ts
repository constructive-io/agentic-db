/**
 * Combined Unified Search + RelationSpatial test — ORM.
 *
 * Proves the exact query shape documented in the root README's
 * "Use the SDK (ORM)" section: a single `where:` clause that
 * composes the unified-search filter (`unifiedSearch: '...'`) with
 * a cross-table PostGIS spatial relation (`nearbyPlaces: { distance,
 * some: { ... } }`).
 *
 * Harness: `@constructive-io/graphql-test`'s `getConnections()` boots
 * the full `ConstructivePreset` plugin stack — which includes both
 * `UnifiedSearchPreset` (graphile-search) AND
 * `PostgisSpatialRelationsPlugin` — against a real deploy of the
 * agentic-db pgpm package. Same stack that `cnc server` serves in
 * production, so this test exercises the documented query shape
 * end-to-end through the generated SDK.
 *
 * Fixture data is seeded via raw SQL at known coordinates so the
 * distance half is deterministic and the text half has a clean
 * positive + two negatives.
 */
jest.setTimeout(300000);
process.env.LOG_SCOPE = '@constructive-io/graphql-test';

import { getConnections, GraphQLTestAdapter } from '@constructive-io/graphql-test';
import type { GraphQLQueryFn } from '@constructive-io/graphql-test';
import { createClient } from '@agentic-db/sdk';
import {
  createAppJobsStub,
  grantAnonymousAccess,
} from '../test-utils/helpers';

const SCHEMAS = ['agentic_db_app_public'];

// Deterministic UUIDs so the assertions can name-check matches / negatives.
const AGENT_ID = '00000000-0000-0000-0000-0000000000a1';
const MEMORY_SF = '00000000-0000-0000-0000-0000000000b1';
const MEMORY_OAKLAND = '00000000-0000-0000-0000-0000000000b2';
const MEMORY_NYC = '00000000-0000-0000-0000-0000000000b3';
const PLACE_FERRY = '00000000-0000-0000-0000-0000000000c1';
const PLACE_TOKYO = '00000000-0000-0000-0000-0000000000c2';

let db: any;
let pg: any;
let query: GraphQLQueryFn;
let teardown: () => Promise<void>;

beforeAll(async () => {
  const connections = await getConnections({
    schemas: SCHEMAS,
    authRole: 'anonymous',
  });
  ({ db, pg, query, teardown } = connections);

  await grantAnonymousAccess(pg);
  await createAppJobsStub(pg);
});

afterAll(async () => {
  if (teardown) await teardown();
});

// Each test runs in its own transaction (begun here, rolled back
// after the test). Seeding happens inside the transaction so the
// ORM query in `it(...)` sees the inserted rows.
beforeEach(() => db.beforeEach());
afterEach(() => db.afterEach());

describe('Unified search + RelationSpatial composition via ORM', () => {
  beforeEach(async () => {
    // Minimal agent row so memories have a valid agent_id FK.
    await pg.query(
      `
      INSERT INTO agentic_db_app_public.agents (id, name)
      VALUES ($1, 'test-agent')
      ON CONFLICT (id) DO NOTHING
      `,
      [AGENT_ID]
    );

    // Memories — raw SQL so location_geo can be set as a geography
    // Point in one statement. Title/content chosen so only MEMORY_SF
    // has meaningful text overlap with the query term
    // "Ferry Building coffee".
    await pg.query(
      `
      INSERT INTO agentic_db_app_public.memories
        (id, agent_id, title, content, location_geo)
      VALUES
        (
          $1, $4,
          'Ferry Building keynote recap',
          'Met a collaborator over coffee near the Ferry Building after the retrieval keynote.',
          ST_SetSRID(ST_MakePoint(-122.4194, 37.7749), 4326)::geography
        ),
        (
          $2, $4,
          'Oakland lunch',
          'Reviewed an unrelated benchmark over lunch.',
          ST_SetSRID(ST_MakePoint(-122.2712, 37.8044), 4326)::geography
        ),
        (
          $3, $4,
          'NYC meetup',
          'Caught up with the east-coast team; had pasta.',
          ST_SetSRID(ST_MakePoint(-74.0060, 40.7128), 4326)::geography
        )
      ON CONFLICT (id) DO NOTHING
      `,
      [MEMORY_SF, MEMORY_OAKLAND, MEMORY_NYC, AGENT_ID]
    );

    // Places — one matches the `category='market'` predicate and is
    // ~200 m from MEMORY_SF, ~13 km from MEMORY_OAKLAND, ~4100 km
    // from MEMORY_NYC. The Tokyo row exists to make sure the
    // spatial predicate actually filters (no memory is within 5 km
    // of Tokyo).
    await pg.query(
      `
      INSERT INTO agentic_db_app_public.places
        (id, name, category, location_geo)
      VALUES
        (
          $1,
          'Ferry Building Marketplace',
          'market',
          ST_SetSRID(ST_MakePoint(-122.3937, 37.7956), 4326)::geography
        ),
        (
          $2,
          'Tsukiji Outer Market',
          'market',
          ST_SetSRID(ST_MakePoint(139.7700, 35.6655), 4326)::geography
        )
      ON CONFLICT (id) DO NOTHING
      `,
      [PLACE_FERRY, PLACE_TOKYO]
    );

    await db.publish();
  });

  it('memory.findMany(unifiedSearch + nearbyPlaces): composes text + spatial in one where', async () => {
    const sdk = createClient({ adapter: new GraphQLTestAdapter(query) });

    const result = await sdk.memory
      .findMany({
        where: {
          // Text half — matches on title/content via any of FTS,
          // BM25 or trgm depending on what's configured on the
          // underlying columns. MEMORY_SF contains both "Ferry
          // Building" and "coffee", so it scores strongly.
          unifiedSearch: 'Ferry Building coffee',
          // Spatial half — @spatialRelation smart tag on
          // memory.location_geo (declared in
          // packages/provision/src/schemas/spatial-relations.ts)
          // exposes `nearbyPlaces` on MemoryFilter. Body uses the
          // plugin's `{ distance, some: { …PlaceFilter… } }` shape.
          nearbyPlaces: {
            distance: 5000,
            some: { category: { equalTo: 'market' } },
          },
        },
        first: 10,
        select: {
          id: true,
          title: true,
          searchScore: true,
        },
      })
      .execute();

    if (!result.ok) {
      throw new Error(
        `combined unifiedSearch+nearbyPlaces query failed: ${JSON.stringify(result.errors, null, 2)}`
      );
    }

    const nodes = result.data.memories.nodes;
    const ids = nodes.map((n: any) => n.id);

    // MEMORY_SF passes BOTH halves: its text matches the query and
    // it's within 5 km of the Ferry Building Marketplace (market).
    expect(ids).toContain(MEMORY_SF);

    // MEMORY_OAKLAND fails BOTH halves: text doesn't overlap, and
    // it's ~13 km from any market-category place (Ferry Building is
    // 13 km away; Tsukiji is across the Pacific).
    expect(ids).not.toContain(MEMORY_OAKLAND);

    // MEMORY_NYC fails BOTH halves: "pasta" doesn't overlap the
    // query, and NYC is ~4100 km from the nearest market.
    expect(ids).not.toContain(MEMORY_NYC);

    // The unified-search plugin populates `searchScore` as a
    // 0..1 blended relevance signal when any text algorithm fires.
    const sf = nodes.find((n: any) => n.id === MEMORY_SF);
    expect(sf).toBeDefined();
    expect(typeof sf.searchScore).toBe('number');
    expect(sf.searchScore).toBeGreaterThan(0);
    expect(sf.searchScore).toBeLessThanOrEqual(1);
  });
});
