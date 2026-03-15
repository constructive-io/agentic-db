-- Revert: schemas/agent_db_app_public/tables/notifications/constraints/notifications_pkey/constraint


ALTER TABLE "agent_db_app_public".notifications 
  DROP CONSTRAINT notifications_pkey;


