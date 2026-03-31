-- Deploy: schemas/agentic_db_app_public/tables/event_images/indexes/event_images_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table
-- requires: schemas/agentic_db_app_public/tables/event_images/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX event_images_entity_id_idx ON "agentic_db_app_public".event_images USING BTREE ( entity_id );

