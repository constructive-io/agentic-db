-- Deploy: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/type/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_google_place_id_idx


CREATE INDEX interactions_type_idx ON "agentic_db_app_public".interactions USING BTREE ( type );

