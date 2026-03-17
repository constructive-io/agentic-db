-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/updated_at/alterations/alt0000000874
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/companies/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".companies 
    ALTER COLUMN updated_at SET DEFAULT now();

