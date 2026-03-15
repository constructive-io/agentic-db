-- Deploy: schemas/agent_db_app_public/tables/lists/indexes/lists_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/name/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_title_gin_idx


CREATE INDEX lists_name_gin_idx ON agent_db_app_public.lists USING gin ( name gin_trgm_ops );

