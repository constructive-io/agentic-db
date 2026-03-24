-- Revert: schemas/agentic_db_app_public/tables/projects/constraints/projects_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.projects 
  DROP CONSTRAINT projects_entity_id_fkey;


