-- Deploy: schemas/agent_db_app_public/tables/company_events/columns/entity_id/alterations/alt0000004198
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_events/table
-- requires: schemas/agent_db_app_public/tables/company_events/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN entity_id SET NOT NULL;

