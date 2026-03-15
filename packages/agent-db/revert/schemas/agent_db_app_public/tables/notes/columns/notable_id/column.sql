-- Revert: schemas/agent_db_app_public/tables/notes/columns/notable_id/column


ALTER TABLE agent_db_app_public.notes 
  DROP COLUMN notable_id RESTRICT;


