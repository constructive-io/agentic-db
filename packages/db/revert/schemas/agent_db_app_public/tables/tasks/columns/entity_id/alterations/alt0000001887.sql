-- Revert: schemas/agent_db_app_public/tables/tasks/columns/entity_id/alterations/alt0000001887


ALTER TABLE "agent_db_app_public".tasks 
  ALTER COLUMN entity_id DROP NOT NULL;


