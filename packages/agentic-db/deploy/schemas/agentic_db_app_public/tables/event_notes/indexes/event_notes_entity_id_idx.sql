-- Deploy: schemas/agentic_db_app_public/tables/event_notes/indexes/event_notes_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


CREATE INDEX event_notes_entity_id_idx ON "agentic_db_app_public".event_notes USING BTREE ( entity_id );

