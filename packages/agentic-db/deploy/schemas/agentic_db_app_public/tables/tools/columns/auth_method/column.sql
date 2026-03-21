-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/auth_method/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/endpoint/column


ALTER TABLE agentic_db_app_public.tools 
  ADD COLUMN auth_method text;

