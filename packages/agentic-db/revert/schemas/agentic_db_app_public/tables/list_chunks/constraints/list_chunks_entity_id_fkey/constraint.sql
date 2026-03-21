-- Revert: schemas/agentic_db_app_public/tables/list_chunks/constraints/list_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".list_chunks 
  DROP CONSTRAINT list_chunks_entity_id_fkey;


