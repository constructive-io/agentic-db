-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_stale/alterations/alt0000001336




ALTER TABLE "agentic_db_app_public".runtime_states 
    ALTER COLUMN embedding_stale DROP DEFAULT;



