-- Revert: schemas/agent_db_app_public/tables/deal_documents/constraints/deal_documents_document_id_fkey/constraint


ALTER TABLE "agent_db_app_public".deal_documents 
  DROP CONSTRAINT deal_documents_document_id_fkey;


