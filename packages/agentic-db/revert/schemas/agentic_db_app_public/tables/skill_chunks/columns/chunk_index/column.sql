-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".skill_chunks 
  DROP COLUMN chunk_index RESTRICT;


