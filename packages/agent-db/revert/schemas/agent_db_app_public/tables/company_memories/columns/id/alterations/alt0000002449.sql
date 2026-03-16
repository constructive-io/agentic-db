-- Revert: schemas/agent_db_app_public/tables/company_memories/columns/id/alterations/alt0000002449


ALTER TABLE "agent_db_app_public".company_memories 
  ALTER COLUMN id DROP NOT NULL;


