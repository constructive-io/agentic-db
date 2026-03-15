-- Revert: schemas/agent_db_app_public/tables/company_events/constraints/company_events_event_id_fkey/constraint


ALTER TABLE agent_db_app_public.company_events 
  DROP CONSTRAINT company_events_event_id_fkey;


