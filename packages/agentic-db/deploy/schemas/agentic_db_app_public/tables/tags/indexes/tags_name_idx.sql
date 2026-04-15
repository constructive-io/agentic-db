-- Deploy: schemas/agentic_db_app_public/tables/tags/indexes/tags_name_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/name/column


CREATE INDEX tags_name_idx ON "agentic_db_app_public".tags USING BTREE ( name );

