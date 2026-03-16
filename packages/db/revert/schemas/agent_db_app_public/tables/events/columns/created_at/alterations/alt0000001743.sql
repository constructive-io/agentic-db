-- Revert: schemas/agent_db_app_public/tables/events/columns/created_at/alterations/alt0000001743


ALTER TABLE "agent_db_app_public".events 
  ALTER COLUMN created_at DROP NOT NULL;


