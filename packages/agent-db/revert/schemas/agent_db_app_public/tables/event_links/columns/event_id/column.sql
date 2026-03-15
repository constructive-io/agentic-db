-- Revert: schemas/agent_db_app_public/tables/event_links/columns/event_id/column


ALTER TABLE agent_db_app_public.event_links 
  DROP COLUMN event_id RESTRICT;


