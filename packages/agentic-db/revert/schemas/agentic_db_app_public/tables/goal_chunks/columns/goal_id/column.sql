-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/goal_id/column


ALTER TABLE "agentic_db_app_public".goal_chunks 
  DROP COLUMN goal_id RESTRICT;


