-- Revert: schemas/agentic_db_app_public/tables/venues/columns/created_at/alterations/alt0000005135


ALTER TABLE agentic_db_app_public.venues 
  ALTER COLUMN created_at DROP NOT NULL;


