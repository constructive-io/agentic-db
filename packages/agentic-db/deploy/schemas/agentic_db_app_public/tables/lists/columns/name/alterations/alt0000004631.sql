-- Deploy: schemas/agentic_db_app_public/tables/lists/columns/name/alterations/alt0000004631
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/lists/columns/updated_at/alterations/alt0000004630


ALTER TABLE agentic_db_app_public.lists 
  ALTER COLUMN name SET NOT NULL;

