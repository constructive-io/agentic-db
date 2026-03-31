-- Revert: schemas/agentic_db_app_public/tables/tags/constraints/tags_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.tags 
  DROP CONSTRAINT tags_entity_id_fkey;


