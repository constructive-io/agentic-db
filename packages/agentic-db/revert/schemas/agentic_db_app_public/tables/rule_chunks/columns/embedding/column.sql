-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".rule_chunks 
  DROP COLUMN embedding RESTRICT;


