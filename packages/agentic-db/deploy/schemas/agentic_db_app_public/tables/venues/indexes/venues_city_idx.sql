-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_city_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/city/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE INDEX venues_city_idx ON agentic_db_app_public.venues USING BTREE ( city );

