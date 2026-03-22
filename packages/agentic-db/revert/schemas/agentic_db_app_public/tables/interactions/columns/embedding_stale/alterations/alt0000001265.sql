-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/embedding_stale/alterations/alt0000001265




ALTER TABLE "agentic_db_app_public".interactions 
    ALTER COLUMN embedding_stale DROP DEFAULT;



