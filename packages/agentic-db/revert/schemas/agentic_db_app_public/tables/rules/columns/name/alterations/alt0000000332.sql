-- Revert: schemas/agentic_db_app_public/tables/rules/columns/name/alterations/alt0000000332


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN name DROP NOT NULL;


