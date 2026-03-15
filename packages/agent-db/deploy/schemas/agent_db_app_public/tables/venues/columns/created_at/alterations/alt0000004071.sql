-- Deploy: schemas/agent_db_app_public/tables/venues/columns/created_at/alterations/alt0000004071
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/venues/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".venues 
    ALTER COLUMN created_at SET DEFAULT now();

