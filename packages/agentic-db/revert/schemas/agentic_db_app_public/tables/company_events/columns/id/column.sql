-- Revert: schemas/agentic_db_app_public/tables/company_events/columns/id/column


ALTER TABLE agentic_db_app_public.company_events 
  DROP COLUMN id RESTRICT;


