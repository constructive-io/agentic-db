-- Revert: schemas/agent_db_app_public/tables/memories/constraints/memories_pkey/constraint


ALTER TABLE "agent_db_app_public".memories 
  DROP CONSTRAINT memories_pkey;


