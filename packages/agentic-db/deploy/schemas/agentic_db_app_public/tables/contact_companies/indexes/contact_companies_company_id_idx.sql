-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/indexes/contact_companies_company_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/contact_companies/columns/company_id/column
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_interaction_id_idx


CREATE INDEX contact_companies_company_id_idx ON agentic_db_app_public.contact_companies USING BTREE ( company_id );

