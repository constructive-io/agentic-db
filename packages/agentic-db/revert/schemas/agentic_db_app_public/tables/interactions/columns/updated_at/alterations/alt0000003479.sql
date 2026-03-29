-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/updated_at/alterations/alt0000003479


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN updated_at DROP NOT NULL;


