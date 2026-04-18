-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/state_id/alterations/alt0000001106
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/state_id/column


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  ALTER COLUMN state_id SET NOT NULL;

