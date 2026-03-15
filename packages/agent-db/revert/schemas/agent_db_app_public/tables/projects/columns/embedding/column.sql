-- Revert: schemas/agent_db_app_public/tables/projects/columns/embedding/column


ALTER TABLE agent_db_app_public.projects 
  DROP COLUMN embedding RESTRICT;


