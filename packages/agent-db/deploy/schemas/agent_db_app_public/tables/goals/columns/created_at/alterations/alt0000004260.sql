-- Deploy: schemas/agent_db_app_public/tables/goals/columns/created_at/alterations/alt0000004260
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/goals/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".goals 
    ALTER COLUMN created_at SET DEFAULT now();

