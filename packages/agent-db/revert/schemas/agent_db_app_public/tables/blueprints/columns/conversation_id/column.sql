-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/conversation_id/column


ALTER TABLE "agent_db_app_public".blueprints 
  DROP COLUMN conversation_id RESTRICT;


