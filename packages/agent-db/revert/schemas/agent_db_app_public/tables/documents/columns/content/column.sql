-- Revert: schemas/agent_db_app_public/tables/documents/columns/content/column


ALTER TABLE agent_db_app_public.documents 
  DROP COLUMN content RESTRICT;


