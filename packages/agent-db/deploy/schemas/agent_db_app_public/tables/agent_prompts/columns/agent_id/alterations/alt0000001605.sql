-- Deploy: schemas/agent_db_app_public/tables/agent_prompts/columns/agent_id/alterations/alt0000001605
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_prompts/table
-- requires: schemas/agent_db_app_public/tables/agent_prompts/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.agent_prompts 
  ALTER COLUMN agent_id SET NOT NULL;

