-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/created_at/alterations/alt0000001745


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ALTER COLUMN created_at DROP NOT NULL;


