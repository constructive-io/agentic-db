-- Deploy: schemas/agentic_db_app_public/tables/agent_rules/alterations/alt0000002770
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".agent_rules 
  DISABLE ROW LEVEL SECURITY;

