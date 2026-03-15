-- Revert: schemas/agent_db_app_public/tables/contact_documents/columns/entity_id/column


ALTER TABLE agent_db_app_public.contact_documents 
  DROP COLUMN entity_id RESTRICT;


