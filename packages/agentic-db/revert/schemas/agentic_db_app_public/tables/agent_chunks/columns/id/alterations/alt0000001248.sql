-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/id/alterations/alt0000001248


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ALTER COLUMN id DROP NOT NULL;


