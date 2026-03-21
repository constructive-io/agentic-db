-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".tool_chunks 
  DROP COLUMN embedding RESTRICT;


