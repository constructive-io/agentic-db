-- Revert: schemas/agentic_db_app_public/tables/memories/constraints/memories_agent_id_fkey/constraint


ALTER TABLE agentic_db_app_public.memories 
  DROP CONSTRAINT memories_agent_id_fkey;


