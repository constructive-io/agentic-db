-- Revert: schemas/agentic_db_app_public/tables/projects/columns/description/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN description RESTRICT;


