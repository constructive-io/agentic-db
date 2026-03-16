-- Deploy: schemas/agent_db_app_public/tables/company_memories/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_memories/table
-- requires: schemas/agent_db_app_public/tables/contact_memories/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agent_db_app_public".company_memories TO authenticated;

