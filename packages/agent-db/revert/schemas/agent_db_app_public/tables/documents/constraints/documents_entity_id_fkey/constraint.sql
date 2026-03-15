-- Revert: schemas/agent_db_app_public/tables/documents/constraints/documents_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.documents 
  DROP CONSTRAINT documents_entity_id_fkey;


