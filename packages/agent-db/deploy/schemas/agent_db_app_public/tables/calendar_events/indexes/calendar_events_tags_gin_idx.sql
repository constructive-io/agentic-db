-- Deploy: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/messages/indexes/messages_tags_gin_idx


CREATE INDEX calendar_events_tags_gin_idx ON "agent_db_app_public".calendar_events USING GIN ( tags );

