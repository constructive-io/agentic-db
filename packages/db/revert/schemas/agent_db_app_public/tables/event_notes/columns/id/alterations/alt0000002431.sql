-- Revert: schemas/agent_db_app_public/tables/event_notes/columns/id/alterations/alt0000002431


ALTER TABLE "agent_db_app_public".event_notes 
  ALTER COLUMN id DROP NOT NULL;


