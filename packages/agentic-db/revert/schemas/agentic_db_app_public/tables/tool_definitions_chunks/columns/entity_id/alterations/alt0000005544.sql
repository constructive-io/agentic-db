-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/entity_id/alterations/alt0000005544


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


