-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/updated_at/alterations/alt0000001202
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/tools/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".tools 
    ALTER COLUMN updated_at SET DEFAULT now();

