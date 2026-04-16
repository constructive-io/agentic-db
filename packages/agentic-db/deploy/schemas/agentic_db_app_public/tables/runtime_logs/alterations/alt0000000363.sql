-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/alterations/alt0000000363
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.runtime_logs 
  DISABLE ROW LEVEL SECURITY;

