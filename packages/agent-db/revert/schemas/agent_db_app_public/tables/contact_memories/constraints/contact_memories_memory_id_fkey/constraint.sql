-- Revert: schemas/agent_db_app_public/tables/contact_memories/constraints/contact_memories_memory_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_memories 
  DROP CONSTRAINT contact_memories_memory_id_fkey;


