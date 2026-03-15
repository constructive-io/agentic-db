-- Deploy: schemas/agent_db_app_public/tables/event_links/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/updated_at/alterations/alt0000000972


ALTER TABLE agent_db_app_public.event_links 
  ADD COLUMN title text;

