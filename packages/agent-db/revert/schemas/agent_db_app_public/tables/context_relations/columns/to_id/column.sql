-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/to_id/column


ALTER TABLE agent_db_app_public.context_relations 
  DROP COLUMN to_id RESTRICT;


