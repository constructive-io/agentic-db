-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/source/alterations/alt0000002943


ALTER TABLE "agent_db_app_public".inbound_events 
  ALTER COLUMN source DROP NOT NULL;


