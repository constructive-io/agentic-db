-- Revert: schemas/agentic_db_app_public/tables/rules/columns/created_at/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN created_at RESTRICT;


