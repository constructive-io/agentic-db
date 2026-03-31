-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_relationship_types_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/relationship_types/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX contacts_relationship_types_gin_idx ON "agentic_db_app_public".contacts USING GIN ( relationship_types );

