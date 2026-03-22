-- Revert: schemas/agentic_db_app_public/tables/places/columns/updated_at/alterations/alt0000001899


ALTER TABLE "agentic_db_app_public".places 
  ALTER COLUMN updated_at DROP NOT NULL;


