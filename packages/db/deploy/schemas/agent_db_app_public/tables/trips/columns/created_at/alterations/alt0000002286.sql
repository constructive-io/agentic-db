-- Deploy: schemas/agent_db_app_public/tables/trips/columns/created_at/alterations/alt0000002286
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/trips/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".trips 
    ALTER COLUMN created_at SET DEFAULT now();

