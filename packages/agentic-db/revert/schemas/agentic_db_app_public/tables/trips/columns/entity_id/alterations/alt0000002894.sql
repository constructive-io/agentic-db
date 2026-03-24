-- Revert: schemas/agentic_db_app_public/tables/trips/columns/entity_id/alterations/alt0000002894


ALTER TABLE agentic_db_app_public.trips 
  ALTER COLUMN entity_id DROP NOT NULL;


