-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_relationship_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_email_idx
-- requires: schemas/agent_db_app_public/tables/contacts/columns/relationship_type/column


CREATE INDEX contacts_relationship_type_idx ON "agent_db_app_public".contacts USING BTREE ( relationship_type );

