-- Revert: schemas/agent_db_app_public/tables/documents/columns/entity_id/column


ALTER TABLE agent_db_app_public.documents 
  DROP COLUMN entity_id RESTRICT;


