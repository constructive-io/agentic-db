-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/updated_at/alterations/alt0000004306


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


