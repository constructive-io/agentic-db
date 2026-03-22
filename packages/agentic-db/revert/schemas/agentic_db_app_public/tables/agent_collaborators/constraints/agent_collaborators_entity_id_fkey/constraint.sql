-- Revert: schemas/agentic_db_app_public/tables/agent_collaborators/constraints/agent_collaborators_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.agent_collaborators 
  DROP CONSTRAINT agent_collaborators_entity_id_fkey;


