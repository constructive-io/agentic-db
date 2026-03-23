-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/entity_id/alterations/alt0000003424


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  ALTER COLUMN entity_id DROP NOT NULL;


