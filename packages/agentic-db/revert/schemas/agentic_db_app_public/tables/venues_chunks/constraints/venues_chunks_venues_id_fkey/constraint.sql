-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/constraints/venues_chunks_venues_id_fkey/constraint


ALTER TABLE agentic_db_app_public.venues_chunks 
  DROP CONSTRAINT venues_chunks_venues_id_fkey;


