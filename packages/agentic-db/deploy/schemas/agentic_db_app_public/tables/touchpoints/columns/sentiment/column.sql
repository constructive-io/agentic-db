-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/sentiment/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.touchpoints 
  ADD COLUMN sentiment text;

