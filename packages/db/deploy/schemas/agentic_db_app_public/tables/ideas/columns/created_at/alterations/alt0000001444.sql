-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/created_at/alterations/alt0000001444
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/ideas/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".ideas 
    ALTER COLUMN created_at SET DEFAULT now();

