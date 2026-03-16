-- Revert: schemas/agent_db_app_public/tables/contact_memories/columns/entity_id/alterations/alt0000002445


ALTER TABLE "agent_db_app_public".contact_memories 
  ALTER COLUMN entity_id DROP NOT NULL;


