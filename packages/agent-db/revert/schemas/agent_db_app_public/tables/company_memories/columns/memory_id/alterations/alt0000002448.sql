-- Revert: schemas/agent_db_app_public/tables/company_memories/columns/memory_id/alterations/alt0000002448


ALTER TABLE "agent_db_app_public".company_memories 
  ALTER COLUMN memory_id DROP NOT NULL;


