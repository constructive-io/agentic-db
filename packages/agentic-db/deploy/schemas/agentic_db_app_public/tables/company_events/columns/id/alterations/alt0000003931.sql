-- Deploy: schemas/agentic_db_app_public/tables/company_events/columns/id/alterations/alt0000003931
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/tables/company_events/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.company_events 
  ALTER COLUMN id SET NOT NULL;

