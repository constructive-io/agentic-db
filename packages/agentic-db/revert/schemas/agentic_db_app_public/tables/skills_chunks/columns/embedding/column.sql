-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skills_chunks 
  DROP COLUMN embedding RESTRICT;


