-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/created_at/alterations/alt0000005163


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN created_at DROP NOT NULL;


