-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_search_tsv_gin_idx


CREATE INDEX projects_search_tsv_gin_idx ON agent_db_app_public.projects USING GIN ( search_tsv );

