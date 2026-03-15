-- Deploy: schemas/agent_db_app_public/tables/company_images/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_images/table
-- requires: schemas/agent_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent_db_app_public".company_images TO authenticated;

