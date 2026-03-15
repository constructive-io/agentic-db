-- Deploy: schemas/agent_db_app_public/tables/tools/columns/updated_at/alterations/alt0000004439
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/tools/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".tools 
    ALTER COLUMN updated_at SET DEFAULT now();

