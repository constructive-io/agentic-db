-- Revert: schemas/agent_db_app_public/tables/contact_memories/columns/contact_id/alterations/alt0000002441


ALTER TABLE "agent_db_app_public".contact_memories 
  ALTER COLUMN contact_id DROP NOT NULL;


