-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/entity_id/column


CREATE INDEX contacts_entity_id_idx ON "agentic_db_app_public".contacts USING BTREE ( entity_id );

