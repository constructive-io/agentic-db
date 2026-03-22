-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.companies 
  ADD COLUMN created_at timestamptz;

