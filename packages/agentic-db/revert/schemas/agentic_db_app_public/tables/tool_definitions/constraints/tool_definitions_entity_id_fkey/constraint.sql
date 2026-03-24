-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/constraints/tool_definitions_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.tool_definitions 
  DROP CONSTRAINT tool_definitions_entity_id_fkey;


