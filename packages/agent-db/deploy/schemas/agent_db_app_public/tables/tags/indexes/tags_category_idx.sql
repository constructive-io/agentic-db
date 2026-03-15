-- Deploy: schemas/agent_db_app_public/tables/tags/indexes/tags_category_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/indexes/tags_name_idx
-- requires: schemas/agent_db_app_public/tables/tags/columns/category/column


CREATE INDEX tags_category_idx ON agent_db_app_public.tags USING BTREE ( category );

