-- Deploy: schemas/agentic_db_app_public/tables/memories/alterations/alt0000003969
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept/column


ALTER TABLE agentic_db_app_public.memories 
  DISABLE ROW LEVEL SECURITY;

