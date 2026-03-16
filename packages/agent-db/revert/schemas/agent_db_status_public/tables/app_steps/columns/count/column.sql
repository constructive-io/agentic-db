-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/count/column


ALTER TABLE "agent_db_status_public".app_steps 
  DROP COLUMN count RESTRICT;


