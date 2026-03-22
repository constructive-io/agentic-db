-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/runtime_state_id/alterations/alt0000001347
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/runtime_state_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/updated_at/alterations/alt0000001346


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN runtime_state_id SET NOT NULL;

