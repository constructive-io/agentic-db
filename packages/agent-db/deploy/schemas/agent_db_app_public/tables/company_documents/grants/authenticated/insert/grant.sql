-- Deploy: schemas/agent_db_app_public/tables/company_documents/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_documents/table
-- requires: schemas/agent_db_app_public/tables/contact_documents/policies/auth_del_entity_membership/policy


GRANT INSERT ON agent_db_app_public.company_documents TO authenticated;

