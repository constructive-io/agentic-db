-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".memories_chunks 
  DROP COLUMN id RESTRICT;


