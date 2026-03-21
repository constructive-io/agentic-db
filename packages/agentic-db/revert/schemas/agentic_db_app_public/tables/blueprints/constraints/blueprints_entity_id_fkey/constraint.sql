-- Revert: schemas/agentic_db_app_public/tables/blueprints/constraints/blueprints_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.blueprints 
  DROP CONSTRAINT blueprints_entity_id_fkey;


