-- Revert: schemas/agent_db_app_public/tables/documents/columns/title/column


ALTER TABLE agent_db_app_public.documents 
  DROP COLUMN title RESTRICT;


