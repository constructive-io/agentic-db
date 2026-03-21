-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/updated_at/alterations/alt0000004678


ALTER TABLE agentic_db_app_public.list_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


