-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/count/column


ALTER TABLE "agentic_db_status_public".app_steps 
  DROP COLUMN count RESTRICT;


