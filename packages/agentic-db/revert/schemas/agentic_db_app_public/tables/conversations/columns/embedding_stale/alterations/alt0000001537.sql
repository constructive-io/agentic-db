-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/embedding_stale/alterations/alt0000001537




ALTER TABLE "agentic_db_app_public".conversations 
    ALTER COLUMN embedding_stale DROP DEFAULT;



