-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DROP COLUMN embedding_text RESTRICT;


