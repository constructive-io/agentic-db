-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/id/alterations/alt0000001732


ALTER TABLE "agentic_db_app_public".memories_chunks 
  ALTER COLUMN id DROP NOT NULL;


