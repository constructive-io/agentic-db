-- Deploy: schemas/agentic_db_app_public/tables/tags/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE agentic_db_app_public.tags 
  ENABLE ROW LEVEL SECURITY;

