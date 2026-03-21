-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".agent_spawns 
  DROP CONSTRAINT agent_spawns_agent_id_fkey;


