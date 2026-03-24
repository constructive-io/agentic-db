-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/content/alterations/alt0000001341
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ALTER COLUMN content SET NOT NULL;

