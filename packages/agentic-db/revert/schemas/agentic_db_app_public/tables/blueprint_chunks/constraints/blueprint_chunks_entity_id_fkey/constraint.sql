-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/constraints/blueprint_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".blueprint_chunks 
  DROP CONSTRAINT blueprint_chunks_entity_id_fkey;


