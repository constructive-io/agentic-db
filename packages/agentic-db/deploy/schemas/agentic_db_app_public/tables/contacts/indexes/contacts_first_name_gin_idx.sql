-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_first_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/first_name/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_search_tsv_gin_idx


CREATE INDEX contacts_first_name_gin_idx ON agentic_db_app_public.contacts USING gin ( first_name gin_trgm_ops );

