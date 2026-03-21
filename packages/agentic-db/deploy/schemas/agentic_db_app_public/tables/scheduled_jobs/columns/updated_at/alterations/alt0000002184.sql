-- Deploy: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000002184
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".scheduled_jobs 
    ALTER COLUMN updated_at SET DEFAULT now();

