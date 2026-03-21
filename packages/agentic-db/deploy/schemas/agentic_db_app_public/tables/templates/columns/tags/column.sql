-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/is_active/alterations/alt0000004651


ALTER TABLE agentic_db_app_public.templates 
  ADD COLUMN tags citext[];

