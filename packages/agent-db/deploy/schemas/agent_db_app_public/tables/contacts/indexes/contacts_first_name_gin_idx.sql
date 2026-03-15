-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_first_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/first_name/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_search_tsv_gin_idx


CREATE INDEX contacts_first_name_gin_idx ON agent_db_app_public.contacts USING gin ( first_name gin_trgm_ops );

