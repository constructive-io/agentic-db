-- Revert: schemas/agent_db_app_public/tables/notifications/columns/updated_at/column


ALTER TABLE "agent_db_app_public".notifications 
  DROP COLUMN updated_at RESTRICT;


