-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/chunk_index/alterations/alt0000001272


ALTER TABLE "agentic_db_app_public".skills_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


