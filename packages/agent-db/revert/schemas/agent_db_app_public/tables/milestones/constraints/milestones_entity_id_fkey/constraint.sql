-- Revert: schemas/agent_db_app_public/tables/milestones/constraints/milestones_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.milestones 
  DROP CONSTRAINT milestones_entity_id_fkey;


