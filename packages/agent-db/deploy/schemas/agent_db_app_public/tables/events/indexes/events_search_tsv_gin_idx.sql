-- Deploy: schemas/agent_db_app_public/tables/events/indexes/events_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/search_tsv/column
-- requires: schemas/agent_db_app_public/tables/companies/indexes/companies_search_tsv_gin_idx


CREATE INDEX events_search_tsv_gin_idx ON "agent_db_app_public".events USING GIN ( search_tsv );

