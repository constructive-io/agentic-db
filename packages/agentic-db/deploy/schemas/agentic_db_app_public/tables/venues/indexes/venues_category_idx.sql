-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_city_idx


CREATE INDEX venues_category_idx ON "agentic_db_app_public".venues USING BTREE ( category );

