-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/id/alterations/alt0000003093


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN id DROP NOT NULL;


