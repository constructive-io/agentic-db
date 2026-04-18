-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/alterations/alt0000001414
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001393


ALTER TABLE agentic_db_app_public.expense_contacts 
  DISABLE ROW LEVEL SECURITY;

