-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/conversation_id/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN conversation_id RESTRICT;


