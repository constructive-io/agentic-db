-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agentic_db_app_public".skill_tools TO authenticated;

