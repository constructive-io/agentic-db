-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/due_date/column


ALTER TABLE "agentic_db_app_public".milestones 
  DROP COLUMN due_date RESTRICT;


