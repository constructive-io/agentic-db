-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".tool_definitions_chunks 
  DROP COLUMN content RESTRICT;


