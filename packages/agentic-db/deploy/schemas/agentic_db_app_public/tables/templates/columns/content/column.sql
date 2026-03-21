-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/type/column


ALTER TABLE agentic_db_app_public.templates 
  ADD COLUMN content jsonb;

