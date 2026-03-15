-- Deploy: schemas/agent_db_app_public/tables/companies/indexes/companies_domain_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/domain/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_relationship_type_idx


CREATE INDEX companies_domain_idx ON agent_db_app_public.companies USING BTREE ( domain );

