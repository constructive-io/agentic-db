-- Revert: schemas/agent_db_app_public/tables/messages/columns/entity_id/column


ALTER TABLE "agent_db_app_public".messages 
  DROP COLUMN entity_id RESTRICT;


