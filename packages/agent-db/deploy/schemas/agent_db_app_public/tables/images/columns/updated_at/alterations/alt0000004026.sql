-- Deploy: schemas/agent_db_app_public/tables/images/columns/updated_at/alterations/alt0000004026
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/images/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".images 
    ALTER COLUMN updated_at SET DEFAULT now();

