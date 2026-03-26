-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".activity_logs 
  DROP COLUMN entity_id RESTRICT;


