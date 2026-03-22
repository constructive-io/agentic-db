-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/entity_id/column


ALTER TABLE agentic_db_app_public.trip_places 
  DROP COLUMN entity_id RESTRICT;


