-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agentic_db_status_public".app_achievements 
  DROP COLUMN actor_id RESTRICT;


