-- Revert: schemas/agent_db_app_public/tables/company_memories/columns/entity_id/alterations/alt0000002451


ALTER TABLE "agent_db_app_public".company_memories 
  ALTER COLUMN entity_id DROP NOT NULL;


