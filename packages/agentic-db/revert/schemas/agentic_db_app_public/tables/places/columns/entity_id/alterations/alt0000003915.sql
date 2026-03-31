-- Revert: schemas/agentic_db_app_public/tables/places/columns/entity_id/alterations/alt0000003915


ALTER TABLE agentic_db_app_public.places 
  ALTER COLUMN entity_id DROP NOT NULL;


