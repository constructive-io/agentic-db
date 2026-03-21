-- Revert: schemas/agentic_db_app_public/tables/ideas/constraints/ideas_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.ideas 
  DROP CONSTRAINT ideas_entity_id_fkey;


