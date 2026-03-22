-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/constraints/runtime_state_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  DROP CONSTRAINT runtime_state_chunks_entity_id_fkey;


