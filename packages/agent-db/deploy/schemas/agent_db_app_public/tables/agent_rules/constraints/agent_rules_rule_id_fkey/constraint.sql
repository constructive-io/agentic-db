-- Deploy: schemas/agent_db_app_public/tables/agent_rules/constraints/agent_rules_rule_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/agent_rules/table
-- requires: schemas/agent_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.agent_rules 
  ADD CONSTRAINT agent_rules_rule_id_fkey 
    FOREIGN KEY(rule_id) 
    REFERENCES agent_db_app_public.rules (id) 
    ON DELETE CASCADE;

