-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/chunk_index/alterations/alt0000001439




ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



