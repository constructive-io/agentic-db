-- Deploy: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_end_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/end_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_start_at_idx


CREATE INDEX calendar_events_end_at_idx ON "agent_db_app_public".calendar_events USING BTREE ( end_at );

