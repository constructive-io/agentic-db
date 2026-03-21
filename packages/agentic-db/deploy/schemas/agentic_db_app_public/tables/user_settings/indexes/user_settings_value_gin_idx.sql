-- Deploy: schemas/agentic_db_app_public/tables/user_settings/indexes/user_settings_value_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/value/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_search_tsv_gin_idx


CREATE INDEX user_settings_value_gin_idx ON agentic_db_app_public.user_settings USING GIN ( value );

