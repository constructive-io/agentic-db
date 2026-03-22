-- Revert: schemas/agentic_db_app_public/tables/places/columns/name/alterations/alt0000002490


ALTER TABLE "agentic_db_app_public".places 
  ALTER COLUMN name DROP NOT NULL;


