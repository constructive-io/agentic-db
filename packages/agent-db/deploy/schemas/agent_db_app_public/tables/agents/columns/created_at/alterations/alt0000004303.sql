-- Deploy: schemas/agent_db_app_public/tables/agents/columns/created_at/alterations/alt0000004303
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/agents/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".agents 
    ALTER COLUMN created_at SET DEFAULT now();

