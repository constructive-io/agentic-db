-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding_stale/alterations/alt0000001960




ALTER TABLE "agentic_db_app_public".interaction_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



