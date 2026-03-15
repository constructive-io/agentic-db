-- Deploy: schemas/agent_db_app_public/tables/repositories/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


GRANT DELETE ON agent_db_app_public.repositories TO authenticated;

