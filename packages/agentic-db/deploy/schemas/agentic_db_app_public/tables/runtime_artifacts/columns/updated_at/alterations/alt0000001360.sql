-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/alterations/alt0000001360
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".runtime_artifacts 
    ALTER COLUMN updated_at SET DEFAULT now();

