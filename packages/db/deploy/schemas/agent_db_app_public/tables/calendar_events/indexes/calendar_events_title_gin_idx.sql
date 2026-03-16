-- Deploy: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_title_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/title/column
-- requires: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_title_gin_idx


CREATE INDEX calendar_events_title_gin_idx ON "agent_db_app_public".calendar_events USING gin ( title gin_trgm_ops );

