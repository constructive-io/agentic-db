-- Deploy: schemas/agent_db_app_public/tables/rules/columns/updated_at/alterations/alt0000001059
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/rules/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.rules 
    ALTER COLUMN updated_at SET DEFAULT now();

