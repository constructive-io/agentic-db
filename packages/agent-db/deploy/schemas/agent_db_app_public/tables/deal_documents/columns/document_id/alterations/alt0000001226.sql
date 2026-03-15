-- Deploy: schemas/agent_db_app_public/tables/deal_documents/columns/document_id/alterations/alt0000001226
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_documents/table
-- requires: schemas/agent_db_app_public/tables/deal_documents/columns/document_id/column
-- requires: schemas/agent_db_app_public/tables/company_documents/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.deal_documents 
  ALTER COLUMN document_id SET NOT NULL;

