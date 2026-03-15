-- Revert: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_pkey/constraint


ALTER TABLE "agent_db_app_public".agent_spawns 
  DROP CONSTRAINT agent_spawns_pkey;


