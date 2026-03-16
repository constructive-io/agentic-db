-- Revert: schemas/agent_db_app_public/tables/prompts/columns/model/column


ALTER TABLE "agent_db_app_public".prompts 
  DROP COLUMN model RESTRICT;


