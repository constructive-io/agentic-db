-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/id/alterations/alt0000003382


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN id DROP NOT NULL;


