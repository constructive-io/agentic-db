-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/title/alterations/alt0000004566


ALTER TABLE "agent_db_app_public".calendar_events 
  ADD COLUMN description text;

