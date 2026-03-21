-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/search_tsv/column
-- requires: schemas/agentic_db_app_public/tables/events/indexes/events_search_tsv_gin_idx


CREATE INDEX venues_search_tsv_gin_idx ON "agentic_db_app_public".venues USING GIN ( search_tsv );

