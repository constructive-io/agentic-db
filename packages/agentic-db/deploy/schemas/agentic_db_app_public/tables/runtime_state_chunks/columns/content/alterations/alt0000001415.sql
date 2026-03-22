-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/content/alterations/alt0000001415
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/chunk_index/alterations/alt0000001414


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN content SET NOT NULL;

