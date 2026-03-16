-- Revert: schemas/agent_db_app_public/tables/sessions/columns/archived_messages/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN archived_messages RESTRICT;


