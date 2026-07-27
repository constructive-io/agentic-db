-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/name/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/name/column


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN name SET NOT NULL;

