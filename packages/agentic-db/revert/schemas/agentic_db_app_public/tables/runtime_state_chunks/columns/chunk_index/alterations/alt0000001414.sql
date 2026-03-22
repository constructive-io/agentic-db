-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/chunk_index/alterations/alt0000001414


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


