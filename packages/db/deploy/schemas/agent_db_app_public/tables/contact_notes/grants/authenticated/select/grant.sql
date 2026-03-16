-- Deploy: schemas/agent_db_app_public/tables/contact_notes/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_notes/table
-- requires: schemas/agent_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agent_db_app_public".contact_notes TO authenticated;

