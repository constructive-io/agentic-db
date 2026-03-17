-- Revert: schemas/agentic_db_app_public/tables/rules/columns/slug/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN slug RESTRICT;


