-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".rule_chunks 
  DROP COLUMN updated_at RESTRICT;


