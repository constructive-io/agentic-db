-- Deploy: schemas/agentic_db_app_public/tables/conversations/alterations/alt0000015580
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.conversations 
  DISABLE ROW LEVEL SECURITY;

