-- Deploy: schemas/agent_db_app_public/tables/events/columns/event_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/name/alterations/alt0000001747


ALTER TABLE "agent_db_app_public".events 
  ADD COLUMN event_type text;

