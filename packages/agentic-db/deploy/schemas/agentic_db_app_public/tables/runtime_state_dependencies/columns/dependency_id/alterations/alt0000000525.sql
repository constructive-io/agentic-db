-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/dependency_id/alterations/alt0000000525
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/dependency_id/column


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  ALTER COLUMN dependency_id SET NOT NULL;

