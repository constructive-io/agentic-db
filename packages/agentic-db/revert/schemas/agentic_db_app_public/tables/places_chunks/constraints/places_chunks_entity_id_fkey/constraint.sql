-- Revert: schemas/agentic_db_app_public/tables/places_chunks/constraints/places_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.places_chunks 
  DROP CONSTRAINT places_chunks_entity_id_fkey;


