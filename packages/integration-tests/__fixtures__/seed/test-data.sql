-- Seed data for agentic-db integration tests

INSERT INTO "agentic_db_app_public".contacts (id, first_name, last_name, email, headline)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'Software Engineer'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Jones', 'bob@example.com', 'Product Manager');

INSERT INTO "agentic_db_app_public".notes (id, content)
VALUES
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Meeting notes from project kickoff'),
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Research notes on vector databases');

INSERT INTO "agentic_db_app_public".agents (id, name, description, system_prompt)
VALUES
  ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Research Agent', 'Finds relevant information', 'You are a helpful research assistant.');

-- Link Alice to the kickoff note
INSERT INTO "agentic_db_app_public".contact_notes (contact_id, note_id)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa');

-- One task for the research agent
INSERT INTO "agentic_db_app_public".tasks (agent_id, title, description, status)
VALUES
  ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Summarize docs', 'Summarize all project documents', 'pending');

-- Memories with PostGIS Point locations for spatial-filter tests.
-- SF and Oakland are in the Bay Area bbox; NYC is the negative control.
-- Coordinates are chosen so SF <-> Oakland is ~13 km apart (outside 5 km
-- radius of each other) and NYC is ~4100 km from SF.
INSERT INTO "agentic_db_app_public".memories (id, agent_id, title, content, location, location_geo)
VALUES
  (
    'eeeeeeee-eeee-eeee-eeee-eeeeeeee0001',
    'cccccccc-cccc-cccc-cccc-cccccccccccc',
    'Coffee in SF',
    'Met a collaborator near the Ferry Building.',
    'San Francisco, CA',
    ST_SetSRID(ST_MakePoint(-122.4194, 37.7749), 4326)::geography
  ),
  (
    'eeeeeeee-eeee-eeee-eeee-eeeeeeee0002',
    'cccccccc-cccc-cccc-cccc-cccccccccccc',
    'Lunch in Oakland',
    'Reviewed the retrieval benchmark over lunch.',
    'Oakland, CA',
    ST_SetSRID(ST_MakePoint(-122.2712, 37.8044), 4326)::geography
  ),
  (
    'eeeeeeee-eeee-eeee-eeee-eeeeeeee0003',
    'cccccccc-cccc-cccc-cccc-cccccccccccc',
    'Meetup in NYC',
    'Agent-infra meetup in Manhattan.',
    'New York, NY',
    ST_SetSRID(ST_MakePoint(-74.0060, 40.7128), 4326)::geography
  ),
  -- Fourth memory ~260 m from the SF memory, so the self-referential
  -- `nearby_memories` relation has a matching "other" row for the
  -- "within 1 km of MEMORY_SF" test (the plugin excludes the owner row
  -- itself from self-relations). Coordinates are intentionally close to
  -- SF memory (-122.4194, 37.7749) and NOT the same as the Ferry Building
  -- Marketplace place (-122.3937, 37.7956), which is ~3.2 km away.
  (
    'eeeeeeee-eeee-eeee-eeee-eeeeeeee0004',
    'cccccccc-cccc-cccc-cccc-cccccccccccc',
    'Quick walk nearby',
    'Short walk a few blocks from the coffee spot.',
    'San Francisco, CA',
    ST_SetSRID(ST_MakePoint(-122.4180, 37.7770), 4326)::geography
  );

-- -----------------------------------------------------------------------
-- Seed data for the RelationSpatial tests
--
-- Places: one next to the SF memory (~200 m), one next to NYC (~300 m),
-- one in Tokyo (negative control). The SF place is ~13 km from Oakland,
-- so "memories within 5 km of places" should pick up SF memory only for
-- the first place, Oakland for none, and NYC for the NYC place.
-- -----------------------------------------------------------------------
INSERT INTO "agentic_db_app_public".places (id, name, address, category, location_geo)
VALUES
  (
    'dddddddd-dddd-dddd-dddd-dddddddd0001',
    'Ferry Building Marketplace',
    '1 Ferry Building, San Francisco, CA',
    'market',
    ST_SetSRID(ST_MakePoint(-122.3937, 37.7956), 4326)::geography
  ),
  (
    'dddddddd-dddd-dddd-dddd-dddddddd0002',
    'Bryant Park',
    'NYC, NY',
    'park',
    ST_SetSRID(ST_MakePoint(-73.9832, 40.7536), 4326)::geography
  ),
  (
    'dddddddd-dddd-dddd-dddd-dddddddd0003',
    'Shibuya Crossing',
    'Tokyo, Japan',
    'landmark',
    ST_SetSRID(ST_MakePoint(139.7005, 35.6595), 4326)::geography
  );

-- Update the two seeded contacts with location_geo so the
-- memories.nearby_contacts relation has something to match.
-- Alice near the SF memory (~250 m), Bob in NYC (~400 m).
UPDATE "agentic_db_app_public".contacts
  SET location = 'San Francisco, CA',
      location_geo = ST_SetSRID(ST_MakePoint(-122.4214, 37.7775), 4326)::geography
  WHERE id = '11111111-1111-1111-1111-111111111111';

UPDATE "agentic_db_app_public".contacts
  SET location = 'New York, NY',
      location_geo = ST_SetSRID(ST_MakePoint(-74.0021, 40.7105), 4326)::geography
  WHERE id = '22222222-2222-2222-2222-222222222222';

-- Venues: Bay Area SoMa (~1 km from SF memory), NYC (~350 m from NYC
-- memory), London (negative control).
INSERT INTO "agentic_db_app_public".venues (id, name, address, neighborhood, category, location)
VALUES
  (
    'ffffffff-ffff-ffff-ffff-ffffffff0001',
    'SoMa Coffee Bar',
    '500 Howard St, San Francisco, CA',
    'SoMa',
    'cafe',
    ST_SetSRID(ST_MakePoint(-122.3985, 37.7879), 4326)::geography
  ),
  (
    'ffffffff-ffff-ffff-ffff-ffffffff0002',
    'Times Square Diner',
    '1500 Broadway, New York, NY',
    'Midtown',
    'restaurant',
    ST_SetSRID(ST_MakePoint(-73.9855, 40.7580), 4326)::geography
  ),
  (
    'ffffffff-ffff-ffff-ffff-ffffffff0003',
    'London Bridge Pub',
    'Tooley St, London',
    'London Bridge',
    'bar',
    ST_SetSRID(ST_MakePoint(-0.0877, 51.5045), 4326)::geography
  );

-- Trips: one destined SF (near SoMa venue), one destined NYC, one
-- destined Paris (negative control).
INSERT INTO "agentic_db_app_public".trips (id, name, destination, description, destination_geo)
VALUES
  (
    '99999999-9999-9999-9999-999999990001',
    'SF Retrieval Summit',
    'San Francisco, CA',
    'Week-long onsite with the retrieval team.',
    ST_SetSRID(ST_MakePoint(-122.3990, 37.7880), 4326)::geography
  ),
  (
    '99999999-9999-9999-9999-999999990002',
    'NYC AI Conf',
    'New York, NY',
    'Speaker slot at AI Conf.',
    ST_SetSRID(ST_MakePoint(-73.9860, 40.7585), 4326)::geography
  ),
  (
    '99999999-9999-9999-9999-999999990003',
    'Paris Offsite',
    'Paris, France',
    'Engineering offsite.',
    ST_SetSRID(ST_MakePoint(2.3522, 48.8566), 4326)::geography
  );

-- Events: one right at the NYC venue (~50 m), one in SF far from SoMa
-- (~2 km away, outside 500 m), one in Berlin (negative control).
INSERT INTO "agentic_db_app_public".events (id, name, event_type, location, city, location_geo)
VALUES
  (
    '88888888-8888-8888-8888-888888880001',
    'AI Conf Welcome Reception',
    'conference',
    'Times Square',
    'New York',
    ST_SetSRID(ST_MakePoint(-73.9853, 40.7582), 4326)::geography
  ),
  (
    '88888888-8888-8888-8888-888888880002',
    'SF Ferry Building Mixer',
    'meetup',
    'Ferry Building',
    'San Francisco',
    ST_SetSRID(ST_MakePoint(-122.3937, 37.7956), 4326)::geography
  ),
  (
    '88888888-8888-8888-8888-888888880003',
    'Berlin Hackathon',
    'hackathon',
    'Kreuzberg',
    'Berlin',
    ST_SetSRID(ST_MakePoint(13.4050, 52.5200), 4326)::geography
  );
