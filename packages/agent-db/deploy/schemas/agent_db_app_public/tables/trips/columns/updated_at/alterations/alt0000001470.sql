-- Deploy: schemas/agent_db_app_public/tables/trips/columns/updated_at/alterations/alt0000001470
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/trips/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.trips 
    ALTER COLUMN updated_at SET DEFAULT now();

