-- Revert: schemas/agent_db_app_public/tables/prompts/columns/version/column


ALTER TABLE "agent_db_app_public".prompts 
  DROP COLUMN version RESTRICT;


