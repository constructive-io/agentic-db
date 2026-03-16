-- Deploy: schemas/agent_db_app_public/tables/tasks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


GRANT UPDATE ON "agent_db_app_public".tasks TO authenticated;

