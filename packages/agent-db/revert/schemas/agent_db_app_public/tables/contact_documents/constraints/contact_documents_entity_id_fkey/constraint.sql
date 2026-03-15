-- Revert: schemas/agent_db_app_public/tables/contact_documents/constraints/contact_documents_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_documents 
  DROP CONSTRAINT contact_documents_entity_id_fkey;


