-- Revert: schemas/agent_db_app_public/tables/prompts/columns/entity_id/column


ALTER TABLE "agent_db_app_public".prompts 
  DROP COLUMN entity_id RESTRICT;


