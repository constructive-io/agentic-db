-- Deploy: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/category/column


CREATE INDEX places_category_idx ON agentic_db_app_public.places USING BTREE ( category );

