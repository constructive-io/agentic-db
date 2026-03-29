-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/entity_id/alterations/alt0000005910


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


