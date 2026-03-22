-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_is_favorite_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/is_favorite/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_category_idx


CREATE INDEX venues_is_favorite_idx ON "agentic_db_app_public".venues USING BTREE ( is_favorite );

