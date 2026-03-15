-- Deploy: schemas/agent_db_app_public/tables/memories/columns/updated_at/alterations/alt0000002742
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/memories/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".memories 
    ALTER COLUMN updated_at SET DEFAULT now();

