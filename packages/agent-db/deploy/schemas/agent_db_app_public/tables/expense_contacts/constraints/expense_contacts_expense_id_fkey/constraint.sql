-- Deploy: schemas/agent_db_app_public/tables/expense_contacts/constraints/expense_contacts_expense_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expense_contacts/table
-- requires: schemas/agent_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.expense_contacts 
  ADD CONSTRAINT expense_contacts_expense_id_fkey 
    FOREIGN KEY(expense_id) 
    REFERENCES agent_db_app_public.expenses (id) 
    ON DELETE CASCADE;

