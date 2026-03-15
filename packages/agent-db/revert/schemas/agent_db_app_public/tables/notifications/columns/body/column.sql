-- Revert: schemas/agent_db_app_public/tables/notifications/columns/body/column


ALTER TABLE "agent_db_app_public".notifications 
  DROP COLUMN body RESTRICT;


