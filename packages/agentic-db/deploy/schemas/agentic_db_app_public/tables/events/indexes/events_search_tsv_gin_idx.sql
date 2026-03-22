-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/search_tsv/column
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


CREATE INDEX events_search_tsv_gin_idx ON agentic_db_app_public.events USING GIN ( search_tsv );

