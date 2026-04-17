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
  );
