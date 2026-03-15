-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/source/column


ALTER TABLE agent_db_app_public.inbound_events 
  DROP COLUMN source RESTRICT;


