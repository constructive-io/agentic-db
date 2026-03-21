-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".tool_chunks 
  DROP COLUMN chunk_index RESTRICT;


