-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/updated_at/alterations/alt0000004512
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/repositories/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".repositories 
    ALTER COLUMN updated_at SET DEFAULT now();

