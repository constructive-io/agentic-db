-- Deploy: schemas/agent_db_app_public/tables/agent_rules/columns/rule_id/alterations/alt0000001600
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_rules/table
-- requires: schemas/agent_db_app_public/tables/agent_rules/columns/rule_id/column
-- requires: schemas/agent_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.agent_rules 
  ALTER COLUMN rule_id SET NOT NULL;

