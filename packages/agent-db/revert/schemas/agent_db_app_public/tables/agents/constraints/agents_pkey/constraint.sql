-- Revert: schemas/agent_db_app_public/tables/agents/constraints/agents_pkey/constraint


ALTER TABLE "agent_db_app_public".agents 
  DROP CONSTRAINT agents_pkey;


