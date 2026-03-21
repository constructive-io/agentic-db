-- Deploy: schemas/agentic_db_app_public/tables/templates/alterations/alt0000004641
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE agentic_db_app_public.templates 
  DISABLE ROW LEVEL SECURITY;

