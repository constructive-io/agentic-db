-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/entity_id/alterations/alt0000002194
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agentic_db_app_public".tools 
  ALTER COLUMN entity_id SET NOT NULL;

