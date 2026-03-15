-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/created_at/alterations/alt0000001229
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/workflows/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.workflows 
    ALTER COLUMN created_at SET DEFAULT now();

