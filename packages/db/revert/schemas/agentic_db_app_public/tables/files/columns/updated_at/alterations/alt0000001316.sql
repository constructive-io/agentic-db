-- Revert: schemas/agentic_db_app_public/tables/files/columns/updated_at/alterations/alt0000001316


ALTER TABLE "agentic_db_app_public".files 
  ALTER COLUMN updated_at DROP NOT NULL;


