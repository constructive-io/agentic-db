-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/entity_id/alterations/alt0000001425


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN entity_id DROP NOT NULL;


