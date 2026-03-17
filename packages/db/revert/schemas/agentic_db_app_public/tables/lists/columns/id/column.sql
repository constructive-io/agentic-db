-- Revert: schemas/agentic_db_app_public/tables/lists/columns/id/column


ALTER TABLE "agentic_db_app_public".lists 
  DROP COLUMN id RESTRICT;


