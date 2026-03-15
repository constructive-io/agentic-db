-- Revert: schemas/agent_db_app_public/tables/notifications/columns/action_url/column


ALTER TABLE "agent_db_app_public".notifications 
  DROP COLUMN action_url RESTRICT;


