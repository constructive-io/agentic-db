-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_event_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/event_type/column
-- requires: schemas/agentic_db_app_public/tables/events/indexes/events_started_at_idx


CREATE INDEX events_event_type_idx ON "agentic_db_app_public".events USING BTREE ( event_type );

