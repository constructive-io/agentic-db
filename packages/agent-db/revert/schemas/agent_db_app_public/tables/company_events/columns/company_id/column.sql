-- Revert: schemas/agent_db_app_public/tables/company_events/columns/company_id/column


ALTER TABLE agent_db_app_public.company_events 
  DROP COLUMN company_id RESTRICT;


