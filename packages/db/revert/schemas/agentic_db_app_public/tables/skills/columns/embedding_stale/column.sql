-- Revert: schemas/agentic_db_app_public/tables/skills/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN embedding_stale RESTRICT;


