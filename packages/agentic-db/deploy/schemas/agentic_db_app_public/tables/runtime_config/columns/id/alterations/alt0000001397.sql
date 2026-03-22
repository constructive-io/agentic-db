-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/id/alterations/alt0000001397
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/alterations/alt0000001395


ALTER TABLE "agentic_db_app_public".runtime_config 
  ALTER COLUMN id SET NOT NULL;

