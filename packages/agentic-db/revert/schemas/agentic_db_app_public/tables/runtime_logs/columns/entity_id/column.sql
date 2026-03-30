-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".runtime_logs 
  DROP COLUMN entity_id RESTRICT;


