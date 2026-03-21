-- Revert: schemas/agentic_db_app_public/tables/lists/columns/name/alterations/alt0000004631


ALTER TABLE agentic_db_app_public.lists 
  ALTER COLUMN name DROP NOT NULL;


