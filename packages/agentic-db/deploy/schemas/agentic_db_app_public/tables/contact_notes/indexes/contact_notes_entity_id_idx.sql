-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/indexes/contact_notes_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


CREATE INDEX contact_notes_entity_id_idx ON "agentic_db_app_public".contact_notes USING BTREE ( entity_id );

