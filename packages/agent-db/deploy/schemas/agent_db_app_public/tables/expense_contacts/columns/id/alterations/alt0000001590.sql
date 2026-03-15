-- Deploy: schemas/agent_db_app_public/tables/expense_contacts/columns/id/alterations/alt0000001590
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expense_contacts/table
-- requires: schemas/agent_db_app_public/tables/expense_contacts/columns/id/column
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.expense_contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

