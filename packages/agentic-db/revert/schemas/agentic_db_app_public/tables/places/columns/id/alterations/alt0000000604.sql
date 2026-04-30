-- Revert: schemas/agentic_db_app_public/tables/places/columns/id/alterations/alt0000000604


ALTER TABLE agentic_db_app_public.places 
  ALTER COLUMN id DROP NOT NULL;


