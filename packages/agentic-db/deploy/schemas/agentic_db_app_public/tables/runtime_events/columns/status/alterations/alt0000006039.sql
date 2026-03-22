-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/status/alterations/alt0000006039
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/processed_at/column



ALTER TABLE agentic_db_app_public.runtime_events 
    ALTER COLUMN status SET DEFAULT 'pending';

