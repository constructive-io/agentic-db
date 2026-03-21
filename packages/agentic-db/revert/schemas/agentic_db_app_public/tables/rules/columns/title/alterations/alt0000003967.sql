-- Revert: schemas/agentic_db_app_public/tables/rules/columns/title/alterations/alt0000003967


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN title DROP NOT NULL;


