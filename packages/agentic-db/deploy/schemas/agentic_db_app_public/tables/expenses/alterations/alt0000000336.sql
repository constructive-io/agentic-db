-- Deploy: schemas/agentic_db_app_public/tables/expenses/alterations/alt0000000336
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.expenses 
  DISABLE ROW LEVEL SECURITY;

