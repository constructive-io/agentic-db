-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".skill_chunks 
  DROP COLUMN embedding_stale RESTRICT;


