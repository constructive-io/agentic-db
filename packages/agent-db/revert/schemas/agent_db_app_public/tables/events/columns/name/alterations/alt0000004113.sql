-- Revert: schemas/agent_db_app_public/tables/events/columns/name/alterations/alt0000004113


ALTER TABLE "agent_db_app_public".events 
  ALTER COLUMN name DROP NOT NULL;


