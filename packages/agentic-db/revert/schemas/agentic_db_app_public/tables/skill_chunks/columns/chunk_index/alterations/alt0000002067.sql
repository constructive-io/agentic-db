-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/chunk_index/alterations/alt0000002067


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


