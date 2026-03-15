-- Deploy: schemas/agent_db_app_public/tables/company_events/columns/id/alterations/alt0000004244
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_events/table
-- requires: schemas/agent_db_app_public/tables/company_events/columns/id/column
-- requires: schemas/agent_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN id SET NOT NULL;

