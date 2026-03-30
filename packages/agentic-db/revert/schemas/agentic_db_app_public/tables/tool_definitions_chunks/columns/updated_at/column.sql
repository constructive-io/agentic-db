-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".tool_definitions_chunks 
  DROP COLUMN updated_at RESTRICT;


