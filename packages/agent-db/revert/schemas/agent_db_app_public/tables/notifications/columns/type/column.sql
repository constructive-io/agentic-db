-- Revert: schemas/agent_db_app_public/tables/notifications/columns/type/column


ALTER TABLE "agent_db_app_public".notifications 
  DROP COLUMN type RESTRICT;


