-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/embedding_stale/alterations/alt0000001495




ALTER TABLE "agentic_db_app_public".codebases 
    ALTER COLUMN embedding_stale DROP DEFAULT;



