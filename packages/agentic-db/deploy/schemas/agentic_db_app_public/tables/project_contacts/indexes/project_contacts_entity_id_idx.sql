-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/indexes/project_contacts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_is_active_idx


CREATE INDEX project_contacts_entity_id_idx ON "agentic_db_app_public".project_contacts USING BTREE ( entity_id );

