-- Revert: schemas/agent_db_app_public/tables/contact_memories/columns/memory_id/column


ALTER TABLE "agent_db_app_public".contact_memories 
  DROP COLUMN memory_id RESTRICT;


