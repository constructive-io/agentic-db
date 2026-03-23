-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/column


ALTER TABLE "agentic_db_app_public".memories_chunks 
  DROP COLUMN memories_id RESTRICT;


