-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/id/alterations/alt0000001197
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column



ALTER TABLE "agentic_db_app_public".tools 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

