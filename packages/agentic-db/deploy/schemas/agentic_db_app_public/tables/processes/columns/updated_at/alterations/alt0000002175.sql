-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/updated_at/alterations/alt0000002175
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/processes/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".processes 
    ALTER COLUMN updated_at SET DEFAULT now();

