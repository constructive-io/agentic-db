-- Deploy: schemas/agentic_db_app_public/tables/event_venues/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.event_venues 
  ENABLE ROW LEVEL SECURITY;

