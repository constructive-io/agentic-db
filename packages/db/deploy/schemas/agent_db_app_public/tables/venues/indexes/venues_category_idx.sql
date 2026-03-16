-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/category/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_city_idx


CREATE INDEX venues_category_idx ON "agent_db_app_public".venues USING BTREE ( category );

