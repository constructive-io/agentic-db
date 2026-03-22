-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/chunk_index/alterations/alt0000001763


ALTER TABLE "agentic_db_app_public".goal_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


