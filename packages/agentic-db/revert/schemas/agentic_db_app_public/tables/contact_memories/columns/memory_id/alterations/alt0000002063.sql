-- Revert: schemas/agentic_db_app_public/tables/contact_memories/columns/memory_id/alterations/alt0000002063


ALTER TABLE "agentic_db_app_public".contact_memories 
  ALTER COLUMN memory_id DROP NOT NULL;


