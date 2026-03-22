-- Revert: schemas/agentic_db_app_public/tables/contact_memories/columns/contact_id/alterations/alt0000002754


ALTER TABLE "agentic_db_app_public".contact_memories 
  ALTER COLUMN contact_id DROP NOT NULL;


