-- Revert: schemas/agentic_db_app_public/tables/rules/columns/created_at/alterations/alt0000003963


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN created_at DROP NOT NULL;


