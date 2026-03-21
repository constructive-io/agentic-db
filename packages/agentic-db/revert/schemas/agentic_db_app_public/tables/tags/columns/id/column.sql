-- Revert: schemas/agentic_db_app_public/tables/tags/columns/id/column


ALTER TABLE "agentic_db_app_public".tags 
  DROP COLUMN id RESTRICT;


