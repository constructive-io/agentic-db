-- Revert: schemas/agent_db_app_public/tables/messages/columns/updated_at/column


ALTER TABLE "agent_db_app_public".messages 
  DROP COLUMN updated_at RESTRICT;


