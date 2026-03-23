-- Revert: schemas/agentic_db_app_public/tables/habits/columns/description/column


ALTER TABLE "agentic_db_app_public".habits 
  DROP COLUMN description RESTRICT;


