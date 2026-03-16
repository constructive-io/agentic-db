-- Deploy: schemas/agent_db_app_public/tables/contact_events/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_events/table
-- requires: schemas/agent_db_app_public/tables/contact_companies/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent_db_app_public".contact_events TO authenticated;

