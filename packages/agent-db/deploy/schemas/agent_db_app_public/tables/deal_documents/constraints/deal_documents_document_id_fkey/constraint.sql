-- Deploy: schemas/agent_db_app_public/tables/deal_documents/constraints/deal_documents_document_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/deal_documents/table
-- requires: schemas/agent_db_app_public/tables/company_documents/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.deal_documents 
  ADD CONSTRAINT deal_documents_document_id_fkey 
    FOREIGN KEY(document_id) 
    REFERENCES agent_db_app_public.documents (id) 
    ON DELETE CASCADE;

