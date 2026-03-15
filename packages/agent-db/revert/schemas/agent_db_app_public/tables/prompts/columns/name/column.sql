-- Revert: schemas/agent_db_app_public/tables/prompts/columns/name/column


ALTER TABLE "agent_db_app_public".prompts 
  DROP COLUMN name RESTRICT;


