-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".agent_chunks 
  DROP COLUMN updated_at RESTRICT;


