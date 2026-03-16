-- Revert: schemas/agent_db_app_public/tables/contact_memories/columns/memory_id/alterations/alt0000002442


ALTER TABLE "agent_db_app_public".contact_memories 
  ALTER COLUMN memory_id DROP NOT NULL;


