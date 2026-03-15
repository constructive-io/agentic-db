-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/updated_at/alterations/alt0000001066
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/blueprints/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.blueprints 
    ALTER COLUMN updated_at SET DEFAULT now();

