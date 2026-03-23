-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/constraints/agent_tasks_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  DROP CONSTRAINT agent_tasks_chunks_pkey;


