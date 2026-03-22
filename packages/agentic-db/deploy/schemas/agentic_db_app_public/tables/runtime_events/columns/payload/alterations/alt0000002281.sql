-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/alterations/alt0000002281
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/column


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN payload SET NOT NULL;

