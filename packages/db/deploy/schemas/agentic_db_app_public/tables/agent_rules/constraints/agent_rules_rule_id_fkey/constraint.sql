-- Deploy: schemas/agentic_db_app_public/tables/agent_rules/constraints/agent_rules_rule_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".agent_rules 
  ADD CONSTRAINT agent_rules_rule_id_fkey 
    FOREIGN KEY(rule_id) 
    REFERENCES "agentic_db_app_public".rules (id) 
    ON DELETE CASCADE;

