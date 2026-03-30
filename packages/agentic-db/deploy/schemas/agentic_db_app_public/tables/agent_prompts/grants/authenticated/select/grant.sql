-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agentic_db_app_public".agent_prompts TO authenticated;

