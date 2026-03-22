-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/content/alterations/alt0000001553


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ALTER COLUMN content DROP NOT NULL;


