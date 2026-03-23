-- Revert: schemas/agentic_db_app_public/tables/projects/columns/updated_at/alterations/alt0000001467


ALTER TABLE "agentic_db_app_public".projects 
  ALTER COLUMN updated_at DROP NOT NULL;


