-- Revert: schemas/agent_db_app_public/tables/notes/columns/content/column


ALTER TABLE agent_db_app_public.notes 
  DROP COLUMN content RESTRICT;


