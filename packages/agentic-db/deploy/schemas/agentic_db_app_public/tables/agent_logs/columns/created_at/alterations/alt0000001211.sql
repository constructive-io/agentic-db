-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/created_at/alterations/alt0000001211
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".agent_logs 
    ALTER COLUMN created_at SET DEFAULT now();

