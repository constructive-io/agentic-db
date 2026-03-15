-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/created_at/alterations/alt0000004331
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".skill_executions 
    ALTER COLUMN created_at SET DEFAULT now();

