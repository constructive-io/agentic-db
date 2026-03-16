-- Revert: schemas/agent_db_app_public/tables/agents/constraints/agents_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agents 
  DROP CONSTRAINT agents_entity_id_fkey;


