-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/columns/id/alterations/alt0000002781
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".agent_prompts 
  ALTER COLUMN id SET NOT NULL;

