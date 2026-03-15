-- Revert: schemas/agent_db_app_public/tables/events/columns/id/alterations/alt0000004058


ALTER TABLE "agent_db_app_public".events 
  ALTER COLUMN id DROP NOT NULL;


