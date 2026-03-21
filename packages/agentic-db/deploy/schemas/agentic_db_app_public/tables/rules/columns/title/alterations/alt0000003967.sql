-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/title/alterations/alt0000003967
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/rules/columns/updated_at/alterations/alt0000003966


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN title SET NOT NULL;

