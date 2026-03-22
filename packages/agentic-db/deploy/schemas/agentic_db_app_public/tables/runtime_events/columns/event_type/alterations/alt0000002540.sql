-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/alterations/alt0000002540
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/column


ALTER TABLE agentic_db_app_public.runtime_events 
  ALTER COLUMN event_type SET NOT NULL;

