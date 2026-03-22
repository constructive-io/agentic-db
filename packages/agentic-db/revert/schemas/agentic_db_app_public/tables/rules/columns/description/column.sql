-- Revert: schemas/agentic_db_app_public/tables/rules/columns/description/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN description RESTRICT;


