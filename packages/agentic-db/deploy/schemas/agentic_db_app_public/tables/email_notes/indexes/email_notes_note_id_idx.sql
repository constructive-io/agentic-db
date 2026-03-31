-- Deploy: schemas/agentic_db_app_public/tables/email_notes/indexes/email_notes_note_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/email_recipients/policies/auth_del_entity_membership/policy


CREATE INDEX email_notes_note_id_idx ON "agentic_db_app_public".email_notes USING BTREE ( note_id );

