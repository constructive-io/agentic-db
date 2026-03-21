-- Deploy: schemas/agentic_db_app_public/tables/images/columns/updated_at/alterations/alt0000001700
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/images/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".images 
    ALTER COLUMN updated_at SET DEFAULT now();

