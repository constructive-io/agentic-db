-- Revert: schemas/agentic_db_app_public/tables/contact_memories/columns/entity_id/alterations/alt0000002070


ALTER TABLE "agentic_db_app_public".contact_memories 
  ALTER COLUMN entity_id DROP NOT NULL;


