-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/embedding_stale/alterations/alt0000001311




ALTER TABLE "agentic_db_app_public".skill_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



