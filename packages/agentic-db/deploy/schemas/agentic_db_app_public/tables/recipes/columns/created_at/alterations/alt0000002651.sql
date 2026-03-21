-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/created_at/alterations/alt0000002651
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/recipes/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".recipes 
    ALTER COLUMN created_at SET DEFAULT now();

