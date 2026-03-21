-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/input_schema/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/type/column


ALTER TABLE agentic_db_app_public.tools 
  ADD COLUMN input_schema jsonb;

