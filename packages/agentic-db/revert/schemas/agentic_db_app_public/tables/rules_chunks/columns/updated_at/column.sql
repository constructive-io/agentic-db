-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".rules_chunks 
  DROP COLUMN updated_at RESTRICT;


