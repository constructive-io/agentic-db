-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/indexes/runtime_events_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/column


CREATE INDEX runtime_events_status_idx ON agentic_db_app_public.runtime_events USING BTREE ( status );

