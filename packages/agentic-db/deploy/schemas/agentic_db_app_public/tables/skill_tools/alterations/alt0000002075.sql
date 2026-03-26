-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/alterations/alt0000002075
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".skill_tools IS E'@behavior +manyToMany';

