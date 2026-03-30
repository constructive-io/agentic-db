-- Revert: schemas/agentic_db_app_public/tables/images/columns/updated_at/alterations/alt0000000875


ALTER TABLE "agentic_db_app_public".images 
  ALTER COLUMN updated_at DROP NOT NULL;


