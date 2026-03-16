-- Revert: schemas/agent_db_app_public/tables/agents/columns/system_prompt/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN system_prompt RESTRICT;


