-- Revert: schemas/agentic_db_app_public/tables/tools/constraints/tools_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.tools 
  DROP CONSTRAINT tools_entity_id_fkey;


