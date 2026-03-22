-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/entity_id/alterations/alt0000002923


ALTER TABLE agentic_db_app_public.trip_places 
  ALTER COLUMN entity_id DROP NOT NULL;


