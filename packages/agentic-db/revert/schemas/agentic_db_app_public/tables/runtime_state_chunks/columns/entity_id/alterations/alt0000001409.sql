-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/entity_id/alterations/alt0000001409


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


