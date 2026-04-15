-- Revert: schemas/agentic_db_app_public/tables/rules/columns/updated_at/alterations/alt0000013204


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN updated_at DROP NOT NULL;


