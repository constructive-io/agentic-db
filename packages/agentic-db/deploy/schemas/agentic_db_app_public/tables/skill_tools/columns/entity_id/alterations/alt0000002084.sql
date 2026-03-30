-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/columns/entity_id/alterations/alt0000002084
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".skill_tools 
  ALTER COLUMN entity_id SET NOT NULL;

