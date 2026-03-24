-- Revert: schemas/agentic_db_app_public/tables/skills/columns/embedding_stale/alterations/alt0000001305




ALTER TABLE "agentic_db_app_public".skills 
    ALTER COLUMN embedding_stale DROP DEFAULT;



