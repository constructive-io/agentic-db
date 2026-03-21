-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/created_at/alterations/alt0000002407
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/repositories/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".repositories 
    ALTER COLUMN created_at SET DEFAULT now();

