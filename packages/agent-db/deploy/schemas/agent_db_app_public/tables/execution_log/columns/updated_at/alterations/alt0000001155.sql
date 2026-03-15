-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000001155
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/execution_log/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.execution_log 
    ALTER COLUMN updated_at SET DEFAULT now();

