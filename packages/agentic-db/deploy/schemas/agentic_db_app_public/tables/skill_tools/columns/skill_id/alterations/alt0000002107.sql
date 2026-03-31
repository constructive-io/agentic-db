-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/columns/skill_id/alterations/alt0000002107
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/columns/skill_id/column
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".skill_tools 
  ALTER COLUMN skill_id SET NOT NULL;

