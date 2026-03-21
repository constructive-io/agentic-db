-- Deploy: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_name_idx
-- requires: schemas/agentic_db_app_public/tables/tags/columns/category/column


CREATE INDEX tags_category_idx ON agentic_db_app_public.tags USING BTREE ( category );

