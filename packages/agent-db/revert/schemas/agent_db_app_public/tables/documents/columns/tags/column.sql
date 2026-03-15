-- Revert: schemas/agent_db_app_public/tables/documents/columns/tags/column


ALTER TABLE agent_db_app_public.documents 
  DROP COLUMN tags RESTRICT;


