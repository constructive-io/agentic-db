-- Deploy: schemas/agentic_db_app_public/tables/memories/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept/column


ALTER TABLE agentic_db_app_public.memories 
  ENABLE ROW LEVEL SECURITY;

