-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/id/column


ALTER TABLE "agentic_db_status_public".app_steps 
  DROP COLUMN id RESTRICT;


