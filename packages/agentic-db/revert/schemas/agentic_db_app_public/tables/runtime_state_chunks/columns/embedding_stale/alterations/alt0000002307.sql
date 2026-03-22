-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/embedding_stale/alterations/alt0000002307




ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



