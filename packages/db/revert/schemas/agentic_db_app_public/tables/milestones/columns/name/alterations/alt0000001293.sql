-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/name/alterations/alt0000001293


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN name DROP NOT NULL;


