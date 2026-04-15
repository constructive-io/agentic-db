-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/tags/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE INDEX touchpoints_tags_gin_idx ON agentic_db_app_public.touchpoints USING GIN ( tags );

