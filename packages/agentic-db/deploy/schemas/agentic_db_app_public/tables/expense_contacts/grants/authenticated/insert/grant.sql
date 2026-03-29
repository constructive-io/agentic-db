-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


GRANT INSERT ON agentic_db_app_public.expense_contacts TO authenticated;

