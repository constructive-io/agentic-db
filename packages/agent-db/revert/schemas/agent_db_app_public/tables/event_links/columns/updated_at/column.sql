-- Revert: schemas/agent_db_app_public/tables/event_links/columns/updated_at/column


ALTER TABLE agent_db_app_public.event_links 
  DROP COLUMN updated_at RESTRICT;


