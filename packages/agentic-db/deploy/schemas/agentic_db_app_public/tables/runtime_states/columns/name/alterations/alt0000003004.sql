-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/name/alterations/alt0000003004
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.runtime_states 
  ALTER COLUMN name SET NOT NULL;

