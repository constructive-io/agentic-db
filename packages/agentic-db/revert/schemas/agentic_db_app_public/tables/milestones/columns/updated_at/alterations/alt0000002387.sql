-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/updated_at/alterations/alt0000002387


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN updated_at DROP NOT NULL;


