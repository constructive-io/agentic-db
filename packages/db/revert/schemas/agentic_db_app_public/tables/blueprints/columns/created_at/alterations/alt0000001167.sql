-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/created_at/alterations/alt0000001167


ALTER TABLE "agentic_db_app_public".blueprints 
  ALTER COLUMN created_at DROP NOT NULL;


