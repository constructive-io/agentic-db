-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/id/alterations/alt0000002382


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN id DROP NOT NULL;


