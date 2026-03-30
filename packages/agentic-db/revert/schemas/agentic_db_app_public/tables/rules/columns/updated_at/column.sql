-- Revert: schemas/agentic_db_app_public/tables/rules/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN updated_at RESTRICT;


