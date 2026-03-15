-- Deploy: schemas/agent_db_app_public/tables/companies/indexes/companies_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_embedding_text_bm25_idx


CREATE INDEX companies_embedding_text_bm25_idx ON agent_db_app_public.companies USING bm25 ( embedding_text ) WITH ( text_config = english );

