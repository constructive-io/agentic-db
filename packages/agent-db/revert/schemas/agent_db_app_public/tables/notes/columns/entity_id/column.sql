-- Revert: schemas/agent_db_app_public/tables/notes/columns/entity_id/column


ALTER TABLE agent_db_app_public.notes 
  DROP COLUMN entity_id RESTRICT;


