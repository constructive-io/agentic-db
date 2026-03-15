-- Deploy: schemas/agent_db_app_public/tables/contact_events/columns/contact_id/alterations/alt0000001018
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_events/table
-- requires: schemas/agent_db_app_public/tables/contact_events/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/contact_companies/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.contact_events 
  ALTER COLUMN contact_id SET NOT NULL;

