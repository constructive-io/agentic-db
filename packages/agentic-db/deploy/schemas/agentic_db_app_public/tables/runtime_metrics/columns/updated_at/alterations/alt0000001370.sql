-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/alterations/alt0000001370
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".runtime_metrics 
    ALTER COLUMN updated_at SET DEFAULT now();

