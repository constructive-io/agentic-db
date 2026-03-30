-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definitions_id/alterations/alt0000001332


ALTER TABLE "agentic_db_app_public".tool_definitions_chunks 
  ALTER COLUMN tool_definitions_id DROP NOT NULL;


