-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/id/column


ALTER TABLE "agent_db_status_public".app_steps 
  DROP COLUMN id RESTRICT;


