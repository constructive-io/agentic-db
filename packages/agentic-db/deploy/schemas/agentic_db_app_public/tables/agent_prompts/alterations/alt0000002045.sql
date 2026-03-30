-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/alterations/alt0000002045
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".agent_prompts IS E'@behavior +manyToMany';

