-- Revert: schemas/agentic_db_app_public/tables/rules/columns/kind/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN kind RESTRICT;


