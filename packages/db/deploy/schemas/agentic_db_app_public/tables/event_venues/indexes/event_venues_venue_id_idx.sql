-- Deploy: schemas/agentic_db_app_public/tables/event_venues/indexes/event_venues_venue_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/columns/venue_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX event_venues_venue_id_idx ON "agentic_db_app_public".event_venues USING BTREE ( venue_id );

