-- Deploy: schemas/agent_db_app_public/tables/expense_contacts/constraints/expense_contacts_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/expense_contacts/table
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".expense_contacts 
  ADD CONSTRAINT expense_contacts_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent_db_app_public".contacts (id) 
    ON DELETE CASCADE;

