-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_is_favorite_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/is_favorite/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX venues_is_favorite_idx ON agentic_db_app_public.venues USING BTREE ( is_favorite );

