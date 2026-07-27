-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/tags/column


CREATE INDEX events_tags_gin_idx ON agentic_db_app_public.events USING GIN ( tags );

