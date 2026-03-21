-- Deploy: schemas/agentic_db_app_public/tables/user_settings/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/value/column


ALTER TABLE agentic_db_app_public.user_settings 
  ADD COLUMN category text;

