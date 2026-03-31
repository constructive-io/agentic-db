-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/indexes/task_contacts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


CREATE INDEX task_contacts_entity_id_idx ON "agentic_db_app_public".task_contacts USING BTREE ( entity_id );

