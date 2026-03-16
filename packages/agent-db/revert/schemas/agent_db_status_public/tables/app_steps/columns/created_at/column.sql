-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/created_at/column


ALTER TABLE "agent_db_status_public".app_steps 
  DROP COLUMN created_at RESTRICT;


