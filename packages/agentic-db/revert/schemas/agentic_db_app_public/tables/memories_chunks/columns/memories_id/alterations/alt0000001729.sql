-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/alterations/alt0000001729


ALTER TABLE "agentic_db_app_public".memories_chunks 
  ALTER COLUMN memories_id DROP NOT NULL;


