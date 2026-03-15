-- Deploy: schemas/agent_db_app_public/tables/events/indexes/events_event_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/event_type/column
-- requires: schemas/agent_db_app_public/tables/events/indexes/events_started_at_idx


CREATE INDEX events_event_type_idx ON "agent_db_app_public".events USING BTREE ( event_type );

