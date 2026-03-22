-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/entity_id/alterations/alt0000006100


ALTER TABLE agentic_db_app_public.tool_definitions 
  ALTER COLUMN entity_id DROP NOT NULL;


