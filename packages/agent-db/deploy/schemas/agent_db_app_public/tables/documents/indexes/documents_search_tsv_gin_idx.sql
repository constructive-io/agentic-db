-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_search_tsv_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column
-- requires: schemas/agent_db_app_public/tables/projects/indexes/projects_search_tsv_gin_idx


CREATE INDEX documents_search_tsv_gin_idx ON "agent_db_app_public".documents USING GIN ( search_tsv );

