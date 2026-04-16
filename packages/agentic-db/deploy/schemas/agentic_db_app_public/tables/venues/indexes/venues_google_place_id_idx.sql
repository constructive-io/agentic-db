-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_google_place_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/venues/columns/google_place_id/column


CREATE INDEX venues_google_place_id_idx ON agentic_db_app_public.venues USING BTREE ( google_place_id );

