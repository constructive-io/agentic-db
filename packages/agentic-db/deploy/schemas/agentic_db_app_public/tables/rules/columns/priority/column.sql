-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/priority/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/is_active/alterations/alt0000005903


ALTER TABLE agentic_db_app_public.rules 
  ADD COLUMN priority int;

