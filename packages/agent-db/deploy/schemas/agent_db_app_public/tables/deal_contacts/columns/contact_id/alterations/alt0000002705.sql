-- Deploy: schemas/agent_db_app_public/tables/deal_contacts/columns/contact_id/alterations/alt0000002705
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_contacts/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".deal_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

