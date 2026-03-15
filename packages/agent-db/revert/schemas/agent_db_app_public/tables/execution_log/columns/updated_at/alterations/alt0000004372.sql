-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000004372


ALTER TABLE "agent_db_app_public".execution_log 
  ALTER COLUMN updated_at DROP NOT NULL;


