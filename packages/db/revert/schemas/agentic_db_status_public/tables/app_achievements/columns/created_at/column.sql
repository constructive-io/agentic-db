-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/created_at/column


ALTER TABLE "agentic_db_status_public".app_achievements 
  DROP COLUMN created_at RESTRICT;


