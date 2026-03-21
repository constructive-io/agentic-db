-- Revert: schemas/agentic_db_app_public/tables/templates/columns/name/alterations/alt0000004649


ALTER TABLE agentic_db_app_public.templates 
  ALTER COLUMN name DROP NOT NULL;


