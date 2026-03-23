-- Revert: schemas/agentic_db_app_public/tables/rules/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN embedding_stale RESTRICT;


