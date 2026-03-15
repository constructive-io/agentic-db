-- Deploy: schemas/agent_db_app_public/tables/repositories/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


GRANT UPDATE ON agent_db_app_public.repositories TO authenticated;

