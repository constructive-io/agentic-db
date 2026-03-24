-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".agents_chunks 
  DROP COLUMN created_at RESTRICT;


