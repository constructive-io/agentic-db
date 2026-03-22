-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000005625


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN contact_id DROP NOT NULL;


