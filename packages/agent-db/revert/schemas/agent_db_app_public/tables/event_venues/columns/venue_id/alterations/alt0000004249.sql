-- Revert: schemas/agent_db_app_public/tables/event_venues/columns/venue_id/alterations/alt0000004249


ALTER TABLE "agent_db_app_public".event_venues 
  ALTER COLUMN venue_id DROP NOT NULL;


