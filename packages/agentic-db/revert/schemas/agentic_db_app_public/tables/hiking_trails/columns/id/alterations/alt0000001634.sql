-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/id/alterations/alt0000001634


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ALTER COLUMN id DROP NOT NULL;


