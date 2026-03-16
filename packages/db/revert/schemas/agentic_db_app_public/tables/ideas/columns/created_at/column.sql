-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/created_at/column


ALTER TABLE "agentic_db_app_public".ideas 
  DROP COLUMN created_at RESTRICT;


