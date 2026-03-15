-- Revert: schemas/agent_db_app_public/tables/documents/columns/last_accessed_at/column


ALTER TABLE agent_db_app_public.documents 
  DROP COLUMN last_accessed_at RESTRICT;


