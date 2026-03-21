-- Deploy: schemas/agentic_db_app_public/tables/agent_rules/alterations/alt0000004757
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


COMMENT ON TABLE agentic_db_app_public.agent_rules IS E'@behavior +manyToMany';

