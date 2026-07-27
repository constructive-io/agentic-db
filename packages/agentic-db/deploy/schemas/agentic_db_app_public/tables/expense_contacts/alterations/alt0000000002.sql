-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table


COMMENT ON TABLE agentic_db_app_public.expense_contacts IS E'@behavior +manyToMany';

