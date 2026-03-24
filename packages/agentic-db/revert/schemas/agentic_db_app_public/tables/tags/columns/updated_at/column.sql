-- Revert: schemas/agentic_db_app_public/tables/tags/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".tags 
  DROP COLUMN updated_at RESTRICT;


