-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/alterations/alt0000015512
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.runtime_states 
  DISABLE ROW LEVEL SECURITY;

