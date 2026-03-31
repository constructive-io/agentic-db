-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/chunk_index/alterations/alt0000001678


ALTER TABLE "agentic_db_app_public".goals_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


