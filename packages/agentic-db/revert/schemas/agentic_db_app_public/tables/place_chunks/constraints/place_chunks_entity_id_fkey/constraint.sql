-- Revert: schemas/agentic_db_app_public/tables/place_chunks/constraints/place_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".place_chunks 
  DROP CONSTRAINT place_chunks_entity_id_fkey;


