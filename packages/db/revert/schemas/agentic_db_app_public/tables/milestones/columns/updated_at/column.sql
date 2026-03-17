-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".milestones 
  DROP COLUMN updated_at RESTRICT;


