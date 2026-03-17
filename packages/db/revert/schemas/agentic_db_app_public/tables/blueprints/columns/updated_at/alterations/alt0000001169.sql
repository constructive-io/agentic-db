-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/updated_at/alterations/alt0000001169


ALTER TABLE "agentic_db_app_public".blueprints 
  ALTER COLUMN updated_at DROP NOT NULL;


