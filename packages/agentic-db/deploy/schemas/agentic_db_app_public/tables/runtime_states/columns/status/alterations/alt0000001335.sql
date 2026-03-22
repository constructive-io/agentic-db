-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/status/alterations/alt0000001335
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/state_type/column



ALTER TABLE "agentic_db_app_public".runtime_states 
    ALTER COLUMN status SET DEFAULT 'active';

