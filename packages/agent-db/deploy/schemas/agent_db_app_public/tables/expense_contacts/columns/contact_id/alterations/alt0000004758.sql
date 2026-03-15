-- Deploy: schemas/agent_db_app_public/tables/expense_contacts/columns/contact_id/alterations/alt0000004758
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expense_contacts/table
-- requires: schemas/agent_db_app_public/tables/expense_contacts/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".expense_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

