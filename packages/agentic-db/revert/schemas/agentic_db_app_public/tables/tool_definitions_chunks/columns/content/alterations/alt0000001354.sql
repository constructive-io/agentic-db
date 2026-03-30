-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/content/alterations/alt0000001354


ALTER TABLE "agentic_db_app_public".tool_definitions_chunks 
  ALTER COLUMN content DROP NOT NULL;


