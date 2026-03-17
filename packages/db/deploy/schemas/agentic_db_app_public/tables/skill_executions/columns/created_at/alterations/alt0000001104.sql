-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/columns/created_at/alterations/alt0000001104
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".skill_executions 
    ALTER COLUMN created_at SET DEFAULT now();

