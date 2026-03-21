-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".tool_chunks 
  DROP COLUMN embedding_text RESTRICT;


