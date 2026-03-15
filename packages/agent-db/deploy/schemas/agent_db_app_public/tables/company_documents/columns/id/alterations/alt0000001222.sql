-- Deploy: schemas/agent_db_app_public/tables/company_documents/columns/id/alterations/alt0000001222
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_documents/table
-- requires: schemas/agent_db_app_public/tables/company_documents/columns/id/column
-- requires: schemas/agent_db_app_public/tables/contact_documents/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.company_documents 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

