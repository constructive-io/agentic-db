-- Revert: schemas/agentic_db_app_public/tables/rules/columns/content/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN content RESTRICT;


