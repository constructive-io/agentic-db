-- Revert: schemas/agent_db_app_public/tables/memories/constraints/memories_agent_id_fkey/constraint


ALTER TABLE "agent_db_app_public".memories 
  DROP CONSTRAINT memories_agent_id_fkey;


