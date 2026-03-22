-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/action_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_config/column


ALTER TABLE agentic_db_app_public.rules 
  ADD COLUMN action_type text;

