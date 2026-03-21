-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/tool_id/column


ALTER TABLE "agentic_db_app_public".tool_chunks 
  DROP COLUMN tool_id RESTRICT;


