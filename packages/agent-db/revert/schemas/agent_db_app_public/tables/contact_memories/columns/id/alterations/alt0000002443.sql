-- Revert: schemas/agent_db_app_public/tables/contact_memories/columns/id/alterations/alt0000002443


ALTER TABLE "agent_db_app_public".contact_memories 
  ALTER COLUMN id DROP NOT NULL;


