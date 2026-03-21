-- Deploy: schemas/agentic_db_app_public/tables/blueprints/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE agentic_db_app_public.blueprints 
  ENABLE ROW LEVEL SECURITY;

