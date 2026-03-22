-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/entity_id/alterations/alt0000001250


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


