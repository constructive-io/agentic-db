-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/count/alterations/alt0000000183


ALTER TABLE "agentic_db_status_public".app_achievements 
  ALTER COLUMN count DROP NOT NULL;


