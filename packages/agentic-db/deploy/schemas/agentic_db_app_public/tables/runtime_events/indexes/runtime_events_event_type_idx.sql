-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/indexes/runtime_events_event_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/indexes/runtime_schedules_next_run_at_idx


CREATE INDEX runtime_events_event_type_idx ON "agentic_db_app_public".runtime_events USING BTREE ( event_type );

