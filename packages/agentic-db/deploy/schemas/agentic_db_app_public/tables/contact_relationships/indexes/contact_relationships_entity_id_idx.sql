-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/indexes/contact_relationships_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX contact_relationships_entity_id_idx ON "agentic_db_app_public".contact_relationships USING BTREE ( entity_id );

