-- Deploy: schemas/agentic_db_app_public/tables/memories/alterations/alt0000000498
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.memories 
  DISABLE ROW LEVEL SECURITY;

