-- Deploy: schemas/agentic_db_app_public/tables/venue_images/indexes/venue_images_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/tables/venue_images/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX venue_images_entity_id_idx ON "agentic_db_app_public".venue_images USING BTREE ( entity_id );

