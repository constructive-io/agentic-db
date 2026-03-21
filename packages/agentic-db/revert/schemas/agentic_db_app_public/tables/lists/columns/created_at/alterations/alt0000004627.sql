-- Revert: schemas/agentic_db_app_public/tables/lists/columns/created_at/alterations/alt0000004627


ALTER TABLE agentic_db_app_public.lists 
  ALTER COLUMN created_at DROP NOT NULL;


