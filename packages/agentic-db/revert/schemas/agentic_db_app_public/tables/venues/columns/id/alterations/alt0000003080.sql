-- Revert: schemas/agentic_db_app_public/tables/venues/columns/id/alterations/alt0000003080


ALTER TABLE agentic_db_app_public.venues 
  ALTER COLUMN id DROP NOT NULL;


