-- Deploy: schemas/agent_db_app_public/tables/agent_prompts/columns/id/alterations/alt0000004825
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_prompts/table
-- requires: schemas/agent_db_app_public/tables/agent_prompts/columns/id/column
-- requires: schemas/agent_db_app_public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".agent_prompts 
  ALTER COLUMN id SET NOT NULL;

