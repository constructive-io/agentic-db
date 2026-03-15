-- Revert: schemas/agent_db_app_public/tables/notifications/columns/title/column


ALTER TABLE "agent_db_app_public".notifications 
  DROP COLUMN title RESTRICT;


