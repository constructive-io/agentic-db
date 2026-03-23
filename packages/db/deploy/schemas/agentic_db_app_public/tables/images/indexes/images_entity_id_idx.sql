-- Deploy: schemas/agentic_db_app_public/tables/images/indexes/images_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX images_entity_id_idx ON "agentic_db_app_public".images USING BTREE ( entity_id );

