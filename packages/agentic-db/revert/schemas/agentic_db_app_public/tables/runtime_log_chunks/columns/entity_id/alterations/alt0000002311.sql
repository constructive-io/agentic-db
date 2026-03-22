-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/entity_id/alterations/alt0000002311


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


