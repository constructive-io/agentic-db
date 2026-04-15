-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE INDEX emails_tags_gin_idx ON agentic_db_app_public.emails USING GIN ( tags );

