-- Revert: schemas/agentic_db_app_public/tables/places/columns/created_at/alterations/alt0000011216


ALTER TABLE agentic_db_app_public.places 
  ALTER COLUMN created_at DROP NOT NULL;


