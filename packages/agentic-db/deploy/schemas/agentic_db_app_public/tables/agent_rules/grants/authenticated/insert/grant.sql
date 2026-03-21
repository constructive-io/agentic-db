-- Deploy: schemas/agentic_db_app_public/tables/agent_rules/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


GRANT INSERT ON agentic_db_app_public.agent_rules TO authenticated;

