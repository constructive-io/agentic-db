-- Revert: schemas/agentic_db_app_public/tables/venues/columns/updated_at/alterations/alt0000000731


ALTER TABLE agentic_db_app_public.venues 
  ALTER COLUMN updated_at DROP NOT NULL;


