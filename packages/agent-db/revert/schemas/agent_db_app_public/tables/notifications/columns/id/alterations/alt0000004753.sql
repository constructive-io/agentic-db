-- Revert: schemas/agent_db_app_public/tables/notifications/columns/id/alterations/alt0000004753


ALTER TABLE "agent_db_app_public".notifications 
  ALTER COLUMN id DROP NOT NULL;


