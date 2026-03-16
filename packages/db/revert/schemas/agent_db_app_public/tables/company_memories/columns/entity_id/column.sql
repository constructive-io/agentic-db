-- Revert: schemas/agent_db_app_public/tables/company_memories/columns/entity_id/column


ALTER TABLE "agent_db_app_public".company_memories 
  DROP COLUMN entity_id RESTRICT;


