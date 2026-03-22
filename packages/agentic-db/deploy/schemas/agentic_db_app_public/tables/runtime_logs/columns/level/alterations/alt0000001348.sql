-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/level/alterations/alt0000001348
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/level/column
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/runtime_state_id/alterations/alt0000001347


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN level SET NOT NULL;

