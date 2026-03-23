-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".rules_chunks 
  DROP COLUMN chunk_index RESTRICT;


