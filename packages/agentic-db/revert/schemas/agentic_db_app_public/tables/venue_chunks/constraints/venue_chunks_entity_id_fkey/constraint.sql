-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/constraints/venue_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".venue_chunks 
  DROP CONSTRAINT venue_chunks_entity_id_fkey;


