-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE INDEX documents_tags_gin_idx ON agent_db_app_public.documents USING GIN ( tags );

