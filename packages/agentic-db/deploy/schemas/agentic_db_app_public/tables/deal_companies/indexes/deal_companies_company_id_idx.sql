-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/indexes/deal_companies_company_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table
-- requires: schemas/agentic_db_app_public/tables/deal_companies/columns/company_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX deal_companies_company_id_idx ON agentic_db_app_public.deal_companies USING BTREE ( company_id );

