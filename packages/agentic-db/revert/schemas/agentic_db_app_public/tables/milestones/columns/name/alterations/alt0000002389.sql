-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/name/alterations/alt0000002389


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN name DROP NOT NULL;


